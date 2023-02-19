require 'thor'

module Rinstall
  class CLI < Thor
    include Thor::Actions

    desc "bootstrap", "Install Bootstrap"
    def bootstrap
      puts "abcd"

      create_file "config/initializers/initializer.rb", "# Add initialization content here"
    end

    desc "foobar", "Install Foobar (test)"
    def foobar
      puts "Foobar"
    end
  end
end
