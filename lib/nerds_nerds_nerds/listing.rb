require 'nokogiri'
require 'nerds_nerds_nerds/nerd'

module NerdsNerdsNerds
  Listing = Struct.new(:html_document) do
    def all
      html_document.css('a.l-about-nerd-bio').map { |node|
        Nerd.new(node) }
    end
  end
end
