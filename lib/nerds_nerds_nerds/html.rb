require 'open-uri'
require 'nokogiri'

module NerdsNerdsNerds
  class HTML
    attr_reader :content
    def initialize(content: nil)
      @content = content
    end

    def image_base_path
      'http://www.bignerdranch.com'
    end

    def parse
      Nokogiri::HTML(content)
    end

    def read
      self.class.new(content: open(source) { |f| f.read })
    end

    def source
      'http://www.bignerdranch.com/about_us/nerds'
    end
  end
end
