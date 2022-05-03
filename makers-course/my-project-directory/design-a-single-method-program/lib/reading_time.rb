#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

def reading_time(text_length)
  mins = text_length / 200
  if text_length % 200 == 0
    return "It will take you #{mins} minutes to read this text"
  else
    return "It will take you #{mins + 1} minutes to read this text"
  end
end
