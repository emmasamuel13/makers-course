require "music_library"
require "track"

RSpec.describe "integration" do
  context "when we add to the library" do
    it "comes back in the list with a track" do
      music_library = MusicLibrary.new
      track = Track.new("Can't Help Falling In Love", "Elvis Presley")
      music_library.add(track)
      expect(music_library.all).to eq [track]
    end

    it "comes back in the list with multiple tracks" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Can't Help Falling In Love", "Elvis Presley")
      track_2 = Track.new("Perfect", "Ed Sheeran")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end

  context "with some tracks added" do
    it "searches for those tracks by full title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Can't Help Falling In Love", "Elvis Presley")
      track_2 = Track.new("Perfect", "Ed Sheeran")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("Perfect")
      expect(result).to eq [track_2]
    end

    it "searches for those tracks by partial title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Can't Help Falling In Love", "Elvis Presley")
      track_2 = Track.new("Perfect", "Ed Sheeran")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("Love")
      expect(result).to eq [track_1]
    end
  end

  context "where there are no tracks matching" do
    it "yields an empty list when searching" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Can't Help Falling In Love", "Elvis Presley")
      music_library.add(track_1)
      result = music_library.search_by_title("Everything")
      expect(result).to eq []
    end
  end

  context "where there are multiple tracks matching" do
    it "returns multiple tracks" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Can't Help Falling In Love", "Elvis Presley")
      track_2 = Track.new("Perfect", "Ed Sheeran")
      track_3 = Track.new("Everything We Need", "A Day To Remember")
      track_4 = Track.new("Everything Has Changed", "Taylor Swift")
      music_library.add(track_1)
      music_library.add(track_2)
      music_library.add(track_3)
      music_library.add(track_4)
      result = music_library.search_by_title("Everything")
      expect(result).to eq [track_3, track_4]
    end
  end
end
