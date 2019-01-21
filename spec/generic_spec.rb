require 'generic'
require_relative '../lib/gilded_rose.rb'
require_relative '../lib/item.rb'

describe Generic do

  let(:items) { Generic.new("items", 1, 1) }

  describe "#update_quality" do
    it "does not change the name" do
      items = Generic.new("foo", 0, 0)
      GildedRose.new([items]).update_all
      expect(items.name).to eq "foo"
    end

    it "lowers the sell_in by one after a day" do
      items = Generic.new("foo", 1, 2)
      GildedRose.new([items]).update_all
      items.update_sell_in
      expect(items.sell_in).to eq(-1)
    end

    it "never lowers quality below 0" do
      items = Generic.new("foo", 0, 1)
      items.update_quality
      GildedRose.new([items]).update_all
      expect(items.quality).to eq(0)
    end
  end
  context 'when item is generic' do
    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        items = Generic.new("foo", 0, 1)
        items.update_sell_in
        items.update_quality
        #update(item)
        expect(items.quality).to eq(0)
      end
    end
    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        items = Generic.new("foo", 0, 2)
        expect { items.quality_after_sell_in }.to change { items.quality }.by(-2)

      end
    end
  end
end
