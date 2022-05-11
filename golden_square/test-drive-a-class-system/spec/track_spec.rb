require "track"

RSpec.describe Track do
  it "constructs" do
    track = Track.new("Perfect", "Ed Sheeran")
    expect(track.title).to eq "Perfect"
    expect(track.artist).to eq "Ed Sheeran"
  end

  it "formats the title and artist into a string" do
    track = Track.new("Perfect", "Ed Sheeran")
    expect(track.format).to eq "Perfect by Ed Sheeran"
  end
end
