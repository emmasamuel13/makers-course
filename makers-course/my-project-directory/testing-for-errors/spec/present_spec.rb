require "present"

RSpec.describe Present do
  it "wraps and unwraps something" do
    present = Present.new
    present.wrap("a puppy")
    expect(present.unwrap).to eq "a puppy"
  end

  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "fails if we try to wrap but have already wrapped something" do
    present = Present.new
    present.wrap("a puppy")
    expect { present.wrap("a kitten") }.to raise_error "A contents has already been wrapped."
  end
end
