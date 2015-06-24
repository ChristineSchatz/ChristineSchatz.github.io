
DICTIONARY = ["apple", "strawberry", "noir", "baked", "neat", "inor"]

def anagram(string)
  matches = []
  chars_array = []
  DICTIONARY.each { |word|
    if string.length == word.length
      chars_array << word.chars
    end
  }
  (0..2).map { |index|
    if chars_array[index].all? { |i| string.chars.include?(i)}
      matches << chars_array[index]
    end
  }
  matches.flatten
end

p anagram("iron")