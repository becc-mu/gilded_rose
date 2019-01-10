class Backstage
  attr_accessor :name, :sell_in, :quality
  def initialize(name, sell_in, quality)
    @name = name
    @quality = quality
    @sell_in = sell_in
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def update
    update_quality
    decrease_sell_in
    quality_after_sell_in
    guard_quality
  end

  def update_quality
    @quality += 1 if @sell_in < 11
    @quality += 1 if @sell_in < 6
    @quality += 1
  end

  def decrease_sell_in
    @sell_in -= 1
  end

  def quality_after_sell_in
    @quality = 0 if sell_in < 0
  end

  def guard_quality
    @quality = 0 if @quality < 0
    @quality = 50 if @quality > 50
  end
end
