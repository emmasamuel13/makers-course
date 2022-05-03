require "reading_time"

RSpec.describe "reading_time method" do
  it "returns 5 minutes" do
    result = reading_time(1000)
    expect(result).to eq "It will take you 5 minutes to read this text"
  end

  it "returns 10 minutes" do
    result = reading_time(2000)
    expect(result).to eq "It will take you 10 minutes to read this text"
  end

  it "returns 25 minutes" do
    result = reading_time(5000)
    expect(result).to eq "It will take you 25 minutes to read this text"
  end

  it "returns 2 minutes" do
    result = reading_time(350)
    expect(result).to eq "It will take you 2 minutes to read this text"
  end
end
