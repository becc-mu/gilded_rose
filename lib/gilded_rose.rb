class GildedRose
  
  def initialize(items)
    @items = items
  end

  def update_all
    @items.each(&:update)
  end
end
