require 'xdite'
require 'thor'

module Xdite
  class Cli < Thor
    default_task :says
    desc 'says', 'prints a famous quote'
    def says
      puts Xdite.says
    end
  end
end