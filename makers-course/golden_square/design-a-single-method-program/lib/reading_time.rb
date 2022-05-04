#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

def reading_time(text_length)
  if text_length.to_i != text_length
    fail "That's not an integer"
  elsif text_length < 0
    fail "Number needs to be positive"
  elsif text_length % 200 == 0
    return "It will take you #{text_length / 200} minutes to read this text"
  else
    return "It will take you #{(text_length / 200) + 1} minutes to read this text"
  end
end
