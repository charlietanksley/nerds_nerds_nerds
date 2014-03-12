require 'pry'

require 'nerds_nerds_nerds/html'
module SpecMacros
  def self.mock_about_us_page
    File.open('spec/support/files/about_us.html') { |f| f.read }
  end

  def self.nerd_html
    NerdsNerdsNerds::HTML.new(
      content: self.mock_about_us_page)
      .parse
  end
end
