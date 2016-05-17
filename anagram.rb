def anagram (word)
  return [word] if word.size==1
  ret = []
  word.chars.each_with_index do |letter, i|
    rest_word = word.chars.to_a
    rest_word.delete_at(i)
    ret << letter+rest_word.join
  end
  ret  
end
