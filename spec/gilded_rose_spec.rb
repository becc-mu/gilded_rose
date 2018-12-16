require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      item = Item.new("foo", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.name).to eq "foo"
    end

    it "lowers the sell_in by one after a day" do
      item = Item.new("item", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end

    it "never lowers quality below 0" do
      item = Item.new("item", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end
end #end
