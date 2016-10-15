module VagrantPlugins
  module Recreate
    class Plugin < Vagrant.plugin('2')
      name "recreate"
      description <<-DESC
      This command automates Vagrant environment re-creation. It simply runs 'vagrant destroy' and 'vagrant up' sequentially on target environment.
      DESC

      command "recreate" do
        require_relative "command"
        Command
      end
    end
  end
end