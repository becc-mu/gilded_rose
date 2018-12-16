require 'generic'
describe Generic do
  describe "#update_quality" do
    it "does not change the name" do
      item = Generic.new("foo", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.name).to eq "foo"
    end

    it "lowers the sell_in by one after a day" do
      item = Generic.new("item", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end

    it "never lowers quality below 0" do
      item = Generic.new("item", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end
  context 'when item is generic' do
    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        item = Generic.new("item", 1, 1)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(0)
      end
    end
    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        item = Generic.new("item", 0, 2)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(0)
      end
    end
  end
end
