require "grammar_stats"

RSpec.describe GrammarStats do
  context "if string starts with capital and ends with punctuation" do
    grammar_stats = GrammarStats.new
    it "returns true" do
      expect(grammar_stats.check("Hello world!")).to eq true
    end
  end

  context "the percentage of attempts is returned" do
    grammar_stats = GrammarStats.new
    it "returns the percentage" do
      expect(grammar_stats.check("Hello world!")).to eq true
      expect(grammar_stats.check("Hello world!")).to eq true
      expect(grammar_stats.check("Hello world")).to eq false
      expect(grammar_stats.percentage_good).to eq 66
    end
  end
end
