module Xdite
  class << self
    def says
      File.readlines(File.expand_path('../xdite/quotes.txt', __FILE__)).sample
    end
  end
end