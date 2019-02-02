require 'gilded_rose'

describe GildedRose do
  let(:item_one) { double(:item, update: nil) }
  let(:item_two) { double(:item, update: nil) }
  let(:items_arr) { [item_one, item_two] }
  let(:subject) { GildedRose.new(items_arr) }

  describe '#update_quality' do
    it 'calls #update on each element in items array' do
      subject.update_all
      items_arr.each do |item|
        expect(item).to have_received :update
      end
    end
  end
end
