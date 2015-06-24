number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do | nested_number |
  if nested_number.kind_of?(Array)
    nested_number.map! {|inner| inner + 5}
  elsif
    nested_number.kind_of?(Integer)
    nested_number + 5
  end
end
p number_array

# Method will be destructive
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do | word |
  if word.kind_of?(Array)
    word.map! do |inner_word|
      if inner_word.kind_of?(Array)
        inner_word.map! do |final_word|
          final_word << "ly"
          end
      else
        inner_word << "ly"
      end
    end
  else
    word << "ly"
  end
end

p startup_names