require 'xdite'
require 'thor'
require 'xdite/version'

module Xdite
  class Cli < Thor
    default_task :says
    desc 'says [NUMBER]', 'Prints famous quotes. (Default task)'
    def says number = 1
      puts Xdite.says(number)
    end

    desc 'sentence [NUMBER]', 'Prints famous quotes inline'
    def sentence number = 1
      puts Xdite.sentence(number)
    end

    desc 'paragraph [NUMBER] [SENTENCE_NUMBER]', 'Prints paragraphs'
    def paragraph number = 1, per_paragraph = 5
      puts Xdite.paragraph(number, per_paragraph)
    end

    desc 'apologize', 'Ask xdite to apologize'
    def apologize
      puts Xdite.apologize
    end

    desc 'debate', 'Ask xdite to debate'
    def debate
      puts Xdite.debate
    end

    desc 'version', 'Prints version'
    def version
      puts Xdite::VERSION
    end

    no_tasks do
      def self.handle_no_command_error(command, has_namespace = $thor_runner)
        command.to_i == 0 ? super : self.new.invoke(:says, [command.to_i])
      end
    end
  end
end
