require 'item'
require 'generic_methods'

class Sulfuras < Item

  include GenericMethods

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    stale_quality
  end

  def update_sell_in
    stale_sell_in
  end

private

  def stale_quality
    @quality = 80
  end

  def stale_sell_in
    @sell_in = 1
  end
end
