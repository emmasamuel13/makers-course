class Diary
  def initialize
    @diary = []
  end

  def add(entry)
    @diary << entry
  end

  def all
    return @diary
  end

  def count_words
    count = 0
    @diary.each do |entry|
      count += entry.count_words
    end
    return count
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

  def find_best_entry_for_reading_time(wpm, minutes)
    amount_can_read = wpm * minutes
    diary_contents = []
    reading = []
    @diary.each do |entry|
      diary_contents << entry.contents
    end
    diary_contents.each do |contents|
      contents = contents.split(" ")
      if contents.length <= amount_can_read
        reading << contents
      end
    end
    reading = reading.sort_by {|read| read.length}
    return reading[-1].join(" ") 
  end
end
