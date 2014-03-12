require 'spec_helper'
require 'nerds_nerds_nerds/html'

describe NerdsNerdsNerds::HTML do
  describe 'default configuration' do
    let(:html) { NerdsNerdsNerds::HTML.new }

    it '#image_base_path' do
      expect(html.image_base_path).to eq('http://www.bignerdranch.com')
    end

    it '#source' do
      expect(html.source).to eq('http://www.bignerdranch.com/about_us/nerds')
    end
  end

  describe 'parsing the html' do
    let(:source) { 'spec/support/files/about_us.html' }
    let(:html) { NerdsNerdsNerds::HTML.new(
        content: File.open(source) { |f| f.read }) }

    it 'returns a Nokogiri::HTML::Document' do
      expect(html.parse).to be_a(Nokogiri::HTML::Document)
    end
  end
end
