require 'generic'
class AgedBrie < Generic

  def update_quality
    calculate_quality
    guard_quality
  end

  private

  def calculate_quality
    @quality += 1 if @sell_in == 1
    @quality += 1 if @quality == 49
    @quality += 2 if sell_date_passed?

    update_sell_in
  end
end
