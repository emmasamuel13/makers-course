require "diary_entry"

RSpec.describe DiaryEntry do
  context "constructs" do
    it "returns the title and contents" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      expect(diary_entry.title).to eq "Makers"
      expect(diary_entry.contents).to eq "Learning is fun!"
    end
  end

  context "counts" do
    it "returns the length of contents" do
      diary_entry = DiaryEntry.new("Makers", "Learning is fun!")
      expect(diary_entry.count_words).to eq 3
    end
  end

  context "estimates reading time" do
    it "returns how long it will take to read the entry" do
      diary_entry = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      expect(diary_entry.reading_time(5)).to eq 5
    end
  end

  context "reads the content" do
    it "reads part of the entry" do
      diary_entry = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      expect(diary_entry.reading_chunk(5, 2)).to eq "Mr. and Mrs. Dursley of number four, Privet Drive, were"
    end

    it "reads all of the entry" do
      diary_entry = DiaryEntry.new("Harry Potter", "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.")
      expect(diary_entry.reading_chunk(5, 10)).to eq "Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much."
    end
  end
end
