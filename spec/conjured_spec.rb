require 'conjured'

describe Conjured do

  it "never lowers quality below 0" do
    item = Conjured.new("Conjured", 2, 0)
    item.update
    expect(item.quality).to eq(0)
  end

  it "lowers the quality by two after a day" do
    item = Conjured.new("Conjured", 1, 8)
    item.update
    #expect(item.quality).by(-2
    expect { item.update }.to change { item.quality }.by(-2)

  end

  it "never lowers quality below 0" do
    item = Conjured.new("Conjured", 0, 0)
    item.update
    expect(item.quality).to eq(0)
  end
end
