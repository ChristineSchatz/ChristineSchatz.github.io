

def pig_latin(string)
   string.downcase.start_with?('a', 'e', 'i', 'o', 'u') ? string << "ay" : string = string[1..-1] +string[0] + "ay"
end

p pig_latin("mongole")