require "music_tracker"

RSpec.describe MusicTracker do
  let(:music_list) {["Can't help falling in love - Elvis Presley",
"Everything we need - A Day To Remember",
"Perfect - Ed Sheeran"]}

  context "returns song list" do
    it "returns empty array" do
      music_tracker = MusicTracker.new
      expect(music_tracker.listened).to eq []
    end
  end

  context "adds song to list" do
    it "adds song to arrray" do
      music_tracker = MusicTracker.new
      music_tracker.add("Can't help falling in love - Elvis Presley")
      expect(music_tracker.listened).to eq ["Can't help falling in love - Elvis Presley"]
    end
  end
  
  context "adds multiple songs to list" do
    it "adds multiple songs to array" do
      music_tracker = MusicTracker.new
      music_tracker.add("Can't help falling in love - Elvis Presley")
      music_tracker.add("Everything we need - A Day To Remember")
      music_tracker.add("Perfect - Ed Sheeran")
      expect(music_tracker.listened).to eq music_list
    end
  end

  context "passes in a song already on the list" do
    it "fails when we try to add a duplicate" do
      music_tracker = MusicTracker.new
      music_tracker.add("Can't help falling in love - Elvis Presley")
      music_tracker.add("Everything we need - A Day To Remember")
      music_tracker.add("Perfect - Ed Sheeran")
      expect { music_tracker.add("Perfect - Ed Sheeran") }.to raise_error "That songs already in the tracker"
    end
  end

end
