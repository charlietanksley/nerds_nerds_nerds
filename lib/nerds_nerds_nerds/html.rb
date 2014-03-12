require 'open-uri'
require 'nokogiri'
require 'nerds_nerds_nerds/html_configuration'

module NerdsNerdsNerds
  class HTML
    attr_reader :content
    def initialize(content: nil)
      @content = content
    end

    def parse
      Nokogiri::HTML(content)
    end

    def read
      self.class.new(content: open(HTMLConfiguration.default_source) { |f| f.read })
    end
  end
end
