require 'conjured'

describe Conjured do

  it "never lowers quality below 0" do
    item = Conjured.new("item", 1, 8)
    expect { item.update_quality }.to change { item.quality }.by(-2)

  end

  it "lowers quality by two after a day" do
    item = Conjured.new("item", 0, 6)
    item.update_sell_in
    expect { item.update_quality }.to change { item.quality }.by(-2)
  end
end
