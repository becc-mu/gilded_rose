require 'item'
require 'generic_methods'

class Generic < Item

  include GenericMethods

  def update
    update_quality
    update_sell_in
  end

  def update_quality
    check_item
    @quality -= 2 if out_of_date?
    @quality -= 1 if in_date?
  end
end
