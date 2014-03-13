require 'spec_helper'
require 'nerds_nerds_nerds/nerd'

describe NerdsNerdsNerds::Nerd do
  it 'accessing the html_id of a nerd' do
    data = double('Nokogiri::HTML::Document')
    css_node = double('node', inner_html: 'me first')

    allow(data).to receive(:at_css) { css_node }
    nerd = NerdsNerdsNerds::Nerd.new(data)
    expect(nerd.html_id).to eq('me-first')
  end

  it 'accessing the image of a nerd' do
    data = double('Nokogiri::HTML::Document')
    css_node = double('node', attribute_nodes:
      Array[double('text', inner_text: 'image.jpg')])

    allow(data).to receive(:at_css) { css_node }
    nerd = NerdsNerdsNerds::Nerd.new(data)
    expect(nerd.image(basepath: 'http://foo')).to eq('http://foo/image.jpg')
  end

  it 'accessing the name of a nerd' do
    data = double('Nokogiri::HTML::Document')
    css_node = double('node', inner_html: 'me')

    expect(data).to receive(:at_css)
      .and_return(css_node)
    nerd = NerdsNerdsNerds::Nerd.new(data)
    expect(nerd.name).to eq('me')
  end
end
