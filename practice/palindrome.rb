# given a string, check whether or not it is a palindrome.
# eye,A Toyota.
# A tin mug for a jar of gum, Nita.
require 'pry'

def palindrome?(string)
  string = string.downcase.scan(/\w/)
  string == string.reverse
end

p palindrome?("eye")

