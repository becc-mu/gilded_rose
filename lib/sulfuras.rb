class Sulfuras
  attr_accessor :name, :quality, :sell_in
  def initialize(name, quality, sell_in)
    @name = name
    @quality = quality
    @sell_in = sell_in
  end

  def update
    @quality = 80
  end

  def sell_in
    @sell_in = 1
  end
  def max_quality
    @quality == 80
  end
end
