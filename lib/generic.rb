require 'item'
class Generic < Item

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    reduce_quality
    calculate_quality if sell_date_passed?
    guard_quality
  end

  def update_sell_in
    @sell_in -= 1

  end

  def quality_after_sell_in
    @quality -= 2
  end

  def guard_quality
    @quality = 0 if @quality < 0
    @quality = 50 if @quality > 50
  end

  private

  def reduce_quality
    @quality -= 1 if @quality > 0
  end

  def calculate_quality
    @quality -= 2
    update_sell_in
  end

  def sell_date_passed?
    @sell_in <= 0
  end

end
