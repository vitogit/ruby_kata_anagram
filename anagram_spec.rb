require './anagram'
describe "anagram" do
  context "word with one letter" do
    it "return the same letter" do
      expect(anagram 'a').to match_array(['a'])
    end
  end
  
  context "word with two letter" do
    it "return the same and the anagram" do
      expect(anagram 'ab').to match_array(['ab', 'ba'])
    end
  end  
end
