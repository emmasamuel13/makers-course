#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO

#Pass in string, check string, return either the task or a comment

def todo_check(text)
  if text.to_s != text
    fail "That's not a task!"
  else
    text_arr = text.split(" ")

    text_arr.each do |word|
      if word.upcase == "TODO"
        return text
      end
    end
  end

    return "Congratulations, you've completed all your tasks"

end
