require 'generic'

class Conjured < Generic

  def update_quality
    @quality -= 2 if @quality > 0
    update_sell_in

  end

  def quality_after_sell_in
    update_sell_in
    update_quality
  end
end
