module Xdite
  class << self
    # inline
    def says n = 1
      quotes.sample(n.to_i).join($/)
    end

    # per line
    def sentence n = 1
      quotes.sample(n.to_i).join
    end

    def paragraph n = 3, per_paragraph = 3
      ret = []
      n.to_i.times{ret << sentence(per_paragraph.to_i)}
      ret.join("\n\n")
    end

    def quotes
      @quotes ||= File.readlines(File.expand_path('../xdite/quotes.txt', __FILE__)).map &:strip
    end
  end
end