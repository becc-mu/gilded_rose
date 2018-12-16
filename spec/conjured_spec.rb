require 'conjured'

describe Conjured do

  it "never lowers quality below 0" do
    item = Conjured.new("item", 2, 0)
    GildedRose.new([item]).update_quality
    expect(item.quality).to eq(0)
  end

  it "lowers the sell_in by two after a day" do
    item = Conjured.new("item", 1, 2)
    GildedRose.new([item]).update_quality
    expect(item.sell_in).to eq 0
  end

  it "never lowers quality below 0" do
    item = Generic.new("item", 0, 0)
    GildedRose.new([item]).update_quality
    expect(item.quality).to eq(0)
  end
end
