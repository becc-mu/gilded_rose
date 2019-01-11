class AgedBrie
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
    @quality += 1 if @quality == 49
    unless max_quality?
      @quality += 2 if sell_in.zero?
      @quality += 1 unless sell_in.zero?
    end
    @sell_in -= 1
  end

  def max_quality?
    @quality == 50
  end

end
