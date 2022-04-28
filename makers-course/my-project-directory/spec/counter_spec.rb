require 'counter'

RSpec.describe Counter do
  it "counts up to 5" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "counts up to 1234" do
    counter = Counter.new
    counter.add(1234)
    result = counter.report
    expect(result).to eq "Counted to 1234 so far."
  end
end
