require 'nokogiri'
require 'nerds_nerds_nerds/html_configuration'
require 'nerds_nerds_nerds/nerd'

module NerdsNerdsNerds
  Listing = Struct.new(:html_document) do
    def all
      html_document.css(HTMLConfiguration.bio_node_css_path).map { |node|
        Nerd.new(node) }
    end
  end
end
