require "greet"

RSpec.describe "greet method" do
  it "returns Hello, Emma!" do
    result = greet("Emma")
    expect(result).to eq "Hello, Emma!"
  end
end
