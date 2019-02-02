require 'item'
require 'generic_methods'

class Backstage < Item

  include GenericMethods

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    @quality += 1
    @quality += 1 if @sell_in < 11
    @quality += 1 if @sell_in < 6
    @quality = 0 if out_of_date?
    check_item
  end
end
