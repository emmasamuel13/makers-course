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

  it "fails if we pass in a negative" do
    expect { reading_time(-300) }.to raise_error "Number needs to be positive"
  end

  it "fails is we pass in something that's not an integer" do
    expect { reading_time("hi") }.to raise_error "That's not an integer"
  end

end
