require "nerds_nerds_nerds/html"
require 'nerds_nerds_nerds/html_configuration'
require 'nerds_nerds_nerds/listing'
require 'nerds_nerds_nerds/nerd'
require "nerds_nerds_nerds/version"

module NerdsNerdsNerds
  def self.nerds
    @nerds ||= listing.all
  end

  def self.listing
    html = HTML.new
    listing = Listing.new(html.read.parse)
  end
end
