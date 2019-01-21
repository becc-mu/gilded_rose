require 'gilded_rose'

describe GildedRose do
  let(:item1) { double(:item1, name: "item1", update_quality: true, update_sell_in: true) }
  let(:item2) { double(:item2, name: "item1", update_quality: true, update_sell_in: true) }
  let(:gilded_rose) { GildedRose.new([item1, item2]) }

  describe '#update_all' do
    it 'tries to update the quality of each item' do
      expect(item1).to receive(:update_quality)
      expect(item2).to receive(:update_quality)
      gilded_rose.update_all
    end

    it 'tries to update the sell_in of each item' do
      expect(item1).to receive(:update_sell_in)
      expect(item2).to receive(:update_sell_in)
      gilded_rose.update_all
    end

  end
  it "#update_quality is called and item receives #update" do
    item = spy('item')
    subject = GildedRose.new([item])
    subject.update_all
    expect(item).to have_received(:update_quality)
    expect(item).to have_received(:update_sell_in)
  end
end
