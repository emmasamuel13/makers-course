require "gratitudes"

RSpec.describe Gratitudes do
  it "returns what you are grateful for" do
    gratitudes = Gratitudes.new
    gratitudes.add("chocolate")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: chocolate"
  end
end
