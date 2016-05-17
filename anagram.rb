def anagram (word)
  return [word] if word.size==1
  ret = []
  word.chars.each_with_index do |letter, i|
    anagram_rest = anagram(rest_of_word(word, i))
    anagram_rest.each do |word|
      ret << (letter + word) 
    end    
  end
  ret  
end

def rest_of_word(word, i)
  word_array = word.chars.to_a
  word_array.delete_at(i)
  word_array.join
end
