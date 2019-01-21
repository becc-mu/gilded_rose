require 'generic'
class Backstage < Generic

  def update_quality
    calculate_quality
    guard_quality
  end

  def update_sell_in
    @sell_in -= 1
    quality_after_sell_in
  end

  private

  def calculate_quality
    @quality += 1 if @sell_in < 11
    @quality += 1 if @sell_in < 6
    @quality += 1
  end

  def quality_after_sell_in
    @quality = 0 if sell_in < 0
  end
end
