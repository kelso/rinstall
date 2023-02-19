require 'thor'

module Rinstall
  module Cli
    class Commands < Thor
      include Thor::Actions

      desc "xyz", "Install xyz"
      def xyz
        puts "Xyz"
      end
    end
  end
end
