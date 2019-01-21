class GildedRose
  def initialize(items)
    @items = items
  end

  def update_all
    @items.each do |item|
      update(item)
    end
  end

  def update(item)
    item.update_quality
    item.update_sell_in
  end

end
