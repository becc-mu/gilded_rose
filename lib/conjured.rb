require 'item'
require 'generic_methods'

class Conjured < Item

  include GenericMethods

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    check_item
    @quality -= 2 if in_date?
    @quality -= 4 if out_of_date?
  end
end
