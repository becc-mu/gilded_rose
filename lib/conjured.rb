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
    @sell_in -= 1

    guard_quality
    @quality -= 2 unless @quality <= 1
  end

  def guard_quality
    self.quality = 0 if quality < 0
    self.quality = 50 if quality > 50
  end

end
