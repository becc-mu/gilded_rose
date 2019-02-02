require 'conjured'

describe Conjured do

  it "never lowers quality below 0" do
    item = Conjured.new("item", 0, 0)
    item.update_quality
    expect { item.update_quality }.to change { item.quality }.by(0)
  end

  it "lowers quality by two after one day" do
    item = Conjured.new("item", 1, 2)
    expect { item.update_quality }.to change { item.quality }.from(2).to(0)
  end

  it "lowers quality by four after sell_in" do
    item = Conjured.new("item", 0, 4)
    expect { item.update_quality }.to change { item.quality }.from(4).to(0)
  end
end
