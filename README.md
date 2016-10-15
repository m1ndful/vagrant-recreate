# Vagrant-recreate

This plugin adds possibility to re-create your Vagrant environment with single command. It simply invokes `vagrant destroy` and `vagrant up`.

## Installation

Like any other vagrant plugin, this can be done by invoking below command:

    $ vagrant plugin install vagrant-recreate

## Usage

Vagrant-recreate supports several options from both: `up` and `destroy` command.

* `-f, --force` - Destroy your environment without confirmation;
* `--[no-]provision` - Enable or disable provision on environment creation;
* `--provision-with x,y,z` - Enable only certain provisioners, by type or by name;
* `-h, --help` - print help message.

## Development

After checking out the repo, run `bundle install` to install dependencies.

For more details on vagrant plugins please refer to official documentation at - [Vagrant plugins](https://www.vagrantup.com/docs/plugins/).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/m1ndful/vagrant-recreate .

