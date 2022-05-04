require "string_builder"

RSpec.describe StringBuilder do
  it "returns the string and the length of it" do
    string_builder = StringBuilder.new
    string_builder.add("hello")
    result = string_builder.size
    expect(result).to eq 5
    result2 = string_builder.output
    expect(result2).to eq "hello"
  end
end
