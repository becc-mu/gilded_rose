class Generic
  attr_reader :name, :sell_in, :quality
  def initialize(name, sell_in, quality)
    @name = name
    @quality = quality
    @sell_in = sell_in
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def update
  end 
end
