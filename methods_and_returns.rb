def add_five(num)
  num + 5
end

def subtract_low_from_high(num1, num2)
  if num1 >= num2
    num1 - num2
  else
    num2 - num1
  end
end

puts add_five(4)
puts add_five(2132)

puts subtract_low_from_high(2, 3)
puts subtract_low_from_high(3, 2)

puts add_five(subtract_low_from_high(1463, 16475))

#Challenge (this one is for you to test your learning)

#Write a method called `superify` which takes a string and adds the word
#"super" to the start. So given 'woman' it returns 'superwoman', given 'dog' it
#returns 'superdog'.

def superify(boring)
  "super#{boring}"
end

puts superify(superify(superify(superify("cat"))))
