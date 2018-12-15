class AgedBrie
  attr_reader :name, :sell_in, :quality
 def initialize(name, sell_in, quality)
   @name = name
   @quality = quality
   @sell_in = sell_in
 end

 def update
   @quality += 1 if @quality == 49
 end

 def reduce_sell_in
   @sell_in -= 1
 end

end
