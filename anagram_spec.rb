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

  context "word with 3 letter" do
    it "return anagrams" do
      expect(anagram 'abc').to match_array(['abc', 'acb', 'bac', 'bca', 'cab', 'cba'])
    end
  end

  context "word with 4 letter" do
    it "return anagrams" do
      expect(anagram 'biro').to match_array(['biro', 'bior', 'brio', 'broi', 
                                      'boir', 'bori','ibro' ,'ibor' ,
                                      'irbo' ,'irob' ,'iobr' ,'iorb',
                                      'rbio' ,'rboi' ,'ribo' ,'riob' ,
                                      'roib' ,'robi','obir' ,'obri' ,
                                      'oibr' ,'oirb' ,'orbi','orib'])
    end
  end
end
