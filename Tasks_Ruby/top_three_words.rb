def top_three_words(text)
  words = text.downcase.scan(/[a-z']+/)
  frequency = Hash.new(0)

  words.each do
    |word| frequency[word] += 1
  end
  frequency.sort_by {
    |word, count| -count
  }.first(3).map(&:first)

end

text = "Hi, my name is Yaroslav. What is your name?"
p top_three_words(text)

