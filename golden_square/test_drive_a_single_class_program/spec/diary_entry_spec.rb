require "diary_entry"

RSpec.describe DiaryEntry do
  context "initialize diary entry" do
    it "initializes and returns title and contents" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      expect(diary_entry.title).to eq "Makers"
      expect(diary_entry.contents).to eq "Learning is fun!"
    end
  end

  context "returns the total number of words in the contents" do
    it "returns 3" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      result = diary_entry.count_words
      expect(result).to eq 3
    end
  end

  context "returns how many minutes it will take to read a text" do
    it "returns 3" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      result = diary_entry.reading_time(1)
      expect(result).to eq 3
    end
  end

  context " return how many words can be read in the given time" do
    it "returns -Learning is-" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      result = diary_entry.reading_chunk(1, 2)
      expect(result).to eq "Learning is"
    end

    it "returns -Learning is fun!-" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      result = diary_entry.reading_chunk(3, 3)
      expect(result).to eq "Learning is fun!"
    end

    it "returns -Learning is- -fun!-" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      result = diary_entry.reading_chunk(2, 1)
      expect(result).to eq "Learning is"
      result = diary_entry.reading_chunk(2, 1)
      expect(result).to eq "fun!"
    end
  end
end
