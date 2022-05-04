require "report_length"

RSpec.describe "report_length method" do
  it "returns the string length of 11" do
    result = report_length("Hello world")
    expect(result).to eq "This string was 11 characters long."
  end

  it "returns the string length of 26" do
    result = report_length("abcdefghijklmnopqrstuvwxyz")
    expect(result).to eq "This string was 26 characters long."
  end

  it "returns the string length of 5" do
    result = report_length(".....")
    expect(result).to eq "This string was 5 characters long."
  end
end
