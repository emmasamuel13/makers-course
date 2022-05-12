require "diary"
require "diary_entry"

RSpec.describe "integration" do  
  context "adds item to diary" do
    it "returns the list with the new entry" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end

  context "counts the words" do
    it "returns the word count of one entry" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      diary.add(diary_entry)
      expect(diary.count_words).to eq 3
    end

    it "returns the word count of multiple entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Makers", "Learning is fun!")
      diary_entry2 = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 25
    end
  end

  context "estimates reading time" do
    it "returns how long it will take to read multiple entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Makers", "Learning is fun!")
      diary_entry2 = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(5)).to eq 5
    end
  end

  context "finds the diary entry most appropriate for the length of time" do
    it "returns the longest entry that can be fully read in the length of time" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Makers", "Learning is fun!")
      diary_entry2 = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.find_best_entry_for_reading_time(5, 5)).to eq "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much."
    end

    it "returns the longest entry that can be fully read in the length of time" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Makers", "Learning is fun!")
      diary_entry2 = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.find_best_entry_for_reading_time(5, 2)).to eq "Learning is fun!"
    end
  end
end
