require 'thor'

module Rinstall
  class CLI2 < Thor
    include Thor::Actions

    desc "xyz", "Install xyz"
    def xyz
      puts "Xyz"
    end
  end
end
