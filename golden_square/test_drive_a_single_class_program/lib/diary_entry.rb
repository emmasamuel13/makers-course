class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end
  def title
    return @title
  end
  def contents
    return @contents
  end
  def count_words
    # Returns the number of words in the contents as an integer
    return @contents.split(" ").length
  end
  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    return count_words / wpm
  end
  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    reading = []
    count = 1
    chunk = @contents.split(" ")
    while count <= minutes do
      reading.push(chunk[0..wpm - 1])
      chunk.push(chunk[0..wpm - 1].join(" "))
      to_delete = [0..wpm - 1]
      chunk.delete_if.with_index{|_, index| to_delete.include?(index)}
      count += 1
    end
    return reading.join(" ")
  end
end
