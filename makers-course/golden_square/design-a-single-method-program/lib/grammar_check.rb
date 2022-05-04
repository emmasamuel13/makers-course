#As a user
#So that I can improve my grammar
#I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 'grammar_check' returns a message if input starts with a capital and ends with punctuation
# output = grammar_check(string)

# string = input
# message = output

# grammar_check("Hello world!") => ["Your grammar is correct"]
# grammar_check("Hello world") => ["Your grammar is incorrect, you need to end with a punctuation mark"]
# grammar_check("hello world!") => ["Your grammar is incorrect, you need to start with a capital letter"]
# grammar_check("hello world") => ["Your grammar is very incorrect, you need to start with a capital letter and end with a punctuation mark"]
# grammar_check(1234) => ["This isn't even words!"]

def grammar_check(to_check)
  if to_check.to_s != to_check
    return "This isn't even words!"
  else
    punctuation_array = [".", "!", "?"]
    string_array = to_check.split("")
    first_char = string_array[0]
    last_char = string_array[-1]
    if first_char == first_char.upcase && punctuation_array.include?(last_char)
      return "Your grammar is correct"
    elsif first_char == first_char.upcase
      return "Your grammar is incorrect, you need to end with a punctuation mark"
    elsif punctuation_array.include?(last_char)
      return "Your grammar is incorrect, you need to start with a capital letter"
    else 
      return "Your grammar is very incorrect, you need to start with a capital letter and end with a punctuation mark"
    end
  end
end
