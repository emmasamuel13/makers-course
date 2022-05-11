#As a user
#So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

class MusicTracker
  def initialize
    @played_songs = [] #starts with an empty array as nothing has yet been listened to
  end

  def add(song) #passes in a song and adds it to a list
    if @played_songs.include?(song)
      fail "That songs already in the tracker"
    else
      @played_songs << song
    end
  end

  def listened #shows user all songs they've listened to
    return @played_songs
  end
end
