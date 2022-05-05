class GrammarStats
  def initialize
    @attempts = 0
    @passes = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    punctuation_array = [".", "!", "?"]
    string_array = text.split("")
    first_char = string_array[0]
    last_char = string_array[-1]
    if first_char == first_char.upcase && punctuation_array.include?(last_char)
      @attempts += 1
      @passes += 1
      return true
    else 
      @attempts += 1
      return false
    end
  end

  def percentage_good
    percent = @passes.to_f / @attempts.to_f * 100
    return percent.to_i
  end
end
