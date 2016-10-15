require Vagrant.source_root.join('plugins/commands/up/start_mixins')

module VagrantPlugins
  module Recreate

    class Command < Vagrant.plugin('2', :command)
      include VagrantPlugins::CommandUp::StartMixins

      def self.synopsis
        "destroy and re-create Vagrant environment."
      end

      def execute

        options = {}
        options[:force] = false

        opts = OptionParser.new do |o|
          o.banner = "Usage: vagrant recreate [vm-name]"
          o.separator ""

          build_start_options(o, options)

          o.on("-f", "--force", "Recreate without confirmation.") do |f|
            options[:force] = f
          end
        end

        # Parse the options
        argv = parse_options(opts)
        return if !argv

        # Validate the provisioners
        validate_provisioner_flags!(options, argv)

        with_target_vms(argv, reverse: true) do |machine|
          machine.action(:destroy, force_confirm_destroy: options[:force])
          machine.action(:up, options)
        end
      end

    end
  end
end
