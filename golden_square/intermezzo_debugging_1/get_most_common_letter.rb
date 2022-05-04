def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      if ("a".."z").to_a.include?(char)
        counter[char] += 1
      end
    end
    puts counter.sort_by { |key, value| -value }[0][0]
  end

  # Intended output:
  get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
