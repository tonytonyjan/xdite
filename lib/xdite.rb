module Xdite
  class << self
    def says n = 1
      quotes.sample(n).join
    end
    alias_method :sentence, :says

    def paragraph n = 3, per_paragraph = 3
      ret = []
      n.times{ret << sentence(per_paragraph)}
      ret.join("\n\n")
    end

    def quotes
      @quotes ||= File.readlines(File.expand_path('../xdite/quotes.txt', __FILE__)).map &:strip
    end
  end
end