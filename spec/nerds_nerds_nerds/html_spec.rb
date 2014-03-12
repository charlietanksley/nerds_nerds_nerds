require 'spec_helper'
require 'nerds_nerds_nerds/html'

describe NerdsNerdsNerds::HTML do
  describe 'parsing the html' do
    let(:source) { 'spec/support/files/about_us.html' }
    let(:html) { NerdsNerdsNerds::HTML.new(
        content: File.open(source) { |f| f.read }) }

    it 'returns a Nokogiri::HTML::Document' do
      expect(html.parse).to be_a(Nokogiri::HTML::Document)
    end
  end
end
