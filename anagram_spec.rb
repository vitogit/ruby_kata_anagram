require './anagram'
describe "anagram" do
  context "word with one letter" do
    it "return the same letter" do
      expect(anagram 'a').to match_array(['a'])
    end
  end
end
