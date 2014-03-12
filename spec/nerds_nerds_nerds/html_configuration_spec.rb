require 'spec_helper'
require 'nerds_nerds_nerds/html_configuration'

describe NerdsNerdsNerds::HTMLConfiguration do
  specify '.bio_node_css_path' do
    expect(NerdsNerdsNerds::HTMLConfiguration.bio_node_css_path)
      .to eq('a.l-about-nerd-bio')
  end

  specify '.image_base_path' do
    expect(NerdsNerdsNerds::HTMLConfiguration.image_base_path)
      .to eq('http://www.bignerdranch.com')
  end

  specify '.default_source' do
    expect(NerdsNerdsNerds::HTMLConfiguration.default_source)
      .to eq('http://www.bignerdranch.com/about_us/nerds')
  end
end
