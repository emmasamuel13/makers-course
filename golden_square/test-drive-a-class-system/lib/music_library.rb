class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword)
    found_tracks = []
    @tracks.each do |track|
      if track.title.include?(keyword)
        found_tracks << track
      end
    end
    return found_tracks
  end
end
