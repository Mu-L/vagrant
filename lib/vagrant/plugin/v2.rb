# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

Vagrant.require "log4r"

# We don't autoload components because if we're loading anything in the
# V2 namespace anyways, then we're going to need the Components class.
Vagrant.require "vagrant/plugin/v2/components"
Vagrant.require "vagrant/plugin/v2/errors"

module Vagrant
  module Plugin
    module V2
      autoload :Command, "vagrant/plugin/v2/command"
      autoload :Communicator, "vagrant/plugin/v2/communicator"
      autoload :Components, "vagrant/plugin/v2/components"
      autoload :Config, "vagrant/plugin/v2/config"
      autoload :Guest,  "vagrant/plugin/v2/guest"
      autoload :Host,   "vagrant/plugin/v2/host"
      autoload :Manager, "vagrant/plugin/v2/manager"
      autoload :Plugin, "vagrant/plugin/v2/plugin"
      autoload :Provider, "vagrant/plugin/v2/provider"
      autoload :Push, "vagrant/plugin/v2/push"
      autoload :Provisioner, "vagrant/plugin/v2/provisioner"
      autoload :SyncedFolder, "vagrant/plugin/v2/synced_folder"
      autoload :Trigger, "vagrant/plugin/v2/trigger"

      # Errors
      autoload :Error, "vagrant/plugin/v2/error"
      autoload :InvalidCommandName, "vagrant/plugin/v2/error"
    end
  end
end
