class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @end_of_reading = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    contents = @contents.split(" ")
    return contents.length
  end

  def reading_time(wpm)
    length = count_words
    time = length / wpm
    if length % wpm == 0
      return time
    else
      return time + 1
    end
  end

  def reading_chunk(wpm, minutes)
    contents = @contents.split(" ")
    amount_can_read = wpm * minutes
    read_upto = @end_of_reading
    @end_of_reading += amount_can_read
    reading = contents[read_upto..@end_of_reading - 1]
    if @end_of_reading >= contents.length
      @end_of_reading = 0
    end
    return reading.join(" ")
  end
end
