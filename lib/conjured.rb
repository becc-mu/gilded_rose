class Conjured
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
    guard_quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def update_quality
    @quality -= 2 unless @quality <= 1
    @quality = 0 if @quality == 1
  end

  def decrease_sell_in
    @sell_in -= 1
  end

  def guard_quality
    self.quality = 0 if quality < 0
    self.quality = 50 if quality > 50
  end

end
