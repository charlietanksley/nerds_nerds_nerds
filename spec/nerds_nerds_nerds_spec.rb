require 'spec_helper'
require 'webmock/rspec'
require 'nerds_nerds_nerds'

describe NerdsNerdsNerds do
  before do
    dummy_content = File.open('spec/support/files/about_us.html') { |file|
      file.read }
    stub_request(:get, NerdsNerdsNerds::HTMLConfiguration.default_source)
      .to_return(body: dummy_content)
  end

  describe 'generating a list of Nerds' do
    let(:nerds) { NerdsNerdsNerds.nerds }

    it 'includes nerd images' do
      actual = ['http:/www.bignerdranch.com/images/headshots-white-bg/cbq.jpg',
        'http:/www.bignerdranch.com/images/headshots-white-bg/aaron-hillegass.jpg',
        'http:/www.bignerdranch.com/images/headshots-white-bg/adam-premble.jpg']
      expect(nerds.map(&:image)).to eq(actual)
    end

    it 'includes nerd names' do
      actual = ['CBQ',
        'Aaron Hillegass',
        'Adam Preble']
      expect(nerds.map(&:name)).to eq(actual)
    end

    it 'includes nerd html_ids' do
      actual = ['cbq',
        'aaron-hillegass',
        'adam-preble']
      expect(nerds.map(&:html_id)).to eq(actual)
    end
  end
end
