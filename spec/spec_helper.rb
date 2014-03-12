require 'pry'

require 'nerds_nerds_nerds/html'
module SpecMacros
  def mock_about_us_page
    File.open('spec/support/files/about_us.html') { |f| f.read }
  end

  def nerd_html
    NerdsNerdsNerds::HTML.new(
      content: self.mock_about_us_page)
  end
end
