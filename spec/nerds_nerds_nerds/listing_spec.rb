require 'spec_helper'
require 'nerds_nerds_nerds/listing'

describe NerdsNerdsNerds::Listing do
  let(:html_document) { SpecMacros.nerd_html }

  describe 'getting a listing of all the nerds' do
    before do
      stub_const('Nerd', Class.new )
      expect(Nerd).to receive(:new)
        .exactly(3).times
        .and_return(Nerd.new)
    end

    let(:listing) { NerdsNerdsNerds::Listing.new(html_document) }

    it 'returns an Array' do
      expect(listing.all).to be_an Array
    end

    it 'returns an Array of Nerds' do
      expect(listing.all.map(&:class).uniq).to eq([Nerd])
    end
  end
end
