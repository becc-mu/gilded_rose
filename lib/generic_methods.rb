module GenericMethods
  MAX_QUALITY = 50
  MIN_QUALITY = 0
  def check_item
    passed_max_quality?
    passed_min_quality?
    in_date?
    out_of_date?
  end

  def passed_max_quality?
    @quality = MAX_QUALITY if @quality > MAX_QUALITY

  end

  def passed_min_quality?
    @quality = MIN_QUALITY if @quality < MIN_QUALITY
  end

  def update_sell_in
    @sell_in -= 1
  end

  def in_date?
    @sell_in > 0
  end

  def out_of_date?
    @sell_in <= 0
  end

end
