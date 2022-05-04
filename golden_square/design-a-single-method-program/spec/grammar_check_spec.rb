require "grammar_check"

RSpec.describe "grammar_check method" do
  context "if string starts with capital and ends with punctuation" do
    it "returns a positive message" do
      expect(grammar_check("Hello world!")).to eq "Your grammar is correct"
    end
  end

  context "if string starts with a capital but doesn't end with punctuation" do
    it "returns a semi positive message" do
      expect(grammar_check("Hello world")).to eq "Your grammar is incorrect, you need to end with a punctuation mark"
    end
  end

  context "if string ends with punctuation but doesn't start with a capital" do
    it "returns semi positive message" do
      expect(grammar_check("hello world!")).to eq "Your grammar is incorrect, you need to start with a capital letter"
    end
  end

  context "if string doesn't start with capital or end with punctuation" do
    it "returns very negative message" do
      expect(grammar_check("hello world")).to eq "Your grammar is very incorrect, you need to start with a capital letter and end with a punctuation mark"
    end
  end

  context "object passed in is not a string" do
    it "questions you" do
      expect(grammar_check(1234)).to eq "This isn't even words!"
    end
  end

end
