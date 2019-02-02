require 'backstage'
describe Backstage do
  context 'when item is Backstage passes to a TAFKAL80ETC concert' do
    context 'when sell_in is greater than 10' do
      it 'increases quality by one after each day' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 15, 0)
        expect { item.update_quality }.to change { item.quality }.to(1)
      end

      it 'never increases quality beyond 50' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 15, 50)
        expect { item.update_quality }.to change { item.quality }.by(0)
      end
    end

    context 'when sell_in is less than or equal to 10 but more than 5' do
      it 'increases quality by two after each day' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)
        expect { item.update_quality }.to change { item.quality }.by(2)
      end

      it 'only raises quality to 50 when quality is at 49' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 10, 49)
        expect { item.update_quality }.to change { item.quality }.to(50)
      end
    end

    context 'when sell_in is less than or equal to 5 but more than 0' do
      it 'increases quality by three after each day' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 5, 0)
        expect { item.update_quality }.to change { item.quality }.by(3)
      end

      it 'only raises quality to 50 when quality is at 48 or more' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 5, 48)
        expect { item.update_quality }.to change { item.quality }.to(50)
      end
    end

    context 'after sell_in' do
      it 'sets quality to 0' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)
        expect { item.update_quality }.to change { item.quality }.from(50).to(0)
      end

      it 'does not change quality' do
        item = Backstage.new("Backstage passes to a TAFKAL80ETC concert", 0, 0)
        expect(item.quality).to eq(0)
      end
    end
  end
end
