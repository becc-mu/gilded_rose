require 'item'
require 'generic_methods'

class AgedBrie < Item

  include GenericMethods

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    @quality += 1 if in_date?
    @quality += 2 if out_of_date?
    check_item
  end
end
