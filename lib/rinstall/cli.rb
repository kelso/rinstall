require 'thor'
require 'rinstall/cli/commands'

module Rinstall
  class CLI < Thor
    desc "install COMMANDS", "TODO"
    subcommand "install", Rinstall::Cli::Commands
  end
end
