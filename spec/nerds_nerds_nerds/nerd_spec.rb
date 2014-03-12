require 'spec_helper'
require 'nerds_nerds_nerds/nerd'

describe NerdsNerdsNerds::Nerd do
  it 'accessing the image of a nerd' do
    data = double('Nokogiri::HTML::Document')
    css_node = double('node', attribute_nodes:
      Array[double('text', inner_text: 'image.jpg')])

    expect(data).to receive(:at_css)
      .and_return(css_node)
    nerd = NerdsNerdsNerds::Nerd.new(data)
    expect(nerd.image(basepath: 'http')).to eq('http/image.jpg')
  end
end
