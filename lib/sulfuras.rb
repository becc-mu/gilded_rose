class Sulfuras
  attr_accessor :name, :quality, :sell_in
  def initialize(name, quality, sell_in)
    @name = name
    @quality = quality
    @sell_in = sell_in
  end

  def update
    update_quality
    nochange_sell_in
  end

  def update_quality
    @quality = 80
  end

  def nochange_sell_in
    @sell_in = 1
  end
end
