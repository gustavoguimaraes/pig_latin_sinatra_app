class Pig_latin

  attr_accessor :string, :vowels

  def initialize
    @string = string
    @vowels = ["a","e","i","o","u"]
  end

  def options(word)
     @string = word
       temp = []
         @string[0].scan(/[\w']+/).each do |elem|
          array_char = elem.split(//)
           temp << pig_latinize(array_char) + " "
        end
    temp.join("")
  end
  
  def no_vowel_join(word, vowel_index)
      last_consonant = []
      last_consonant << word[0..(vowel_index-1)]
      ending = last_consonant.unshift("-").push("ay")
      whole_word = ending.unshift(word[vowel_index..-1])
      whole_word.join("")
  end

  def pig_latinize(word) 
    if vowels.include?(word[0])
        start_with_vowel(word)
    elsif word.join("")[0..1] == "qu"
      word.join("")[2..-1] + "-quay"
    elsif word.join("")[0..2] == "squ"
      word.join("")[3..-1]+"-squay"
    elsif vowel_index = word.find_index{ |element| vowels.include?(element)}
       no_vowel_join(word, vowel_index)
      else
        start_with_vowel(word)
     end
  end
       
  def vowel_join(word)
    way_array =[]
    way_array << word.push("way")
    way_array.join("")
  end

  def start_with_vowel(word)
    word.find_index{|element| vowels.include?(element[0])}
    vowel_join(word)
  end

end 