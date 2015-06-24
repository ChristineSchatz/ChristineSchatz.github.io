

my_array = [3, 4, 5, 6, 7, 8, 9]
even_array = my_array.select { |num| num % 2 == 0 }


sugary_proc = Proc.new { |donut| puts "#{donut}!" }
["glazed","powdered","jelly"].each(&sugary_proc)

#=> glazed!
#=> powdered!
#=> jelly!


yum_score = lambda do |flavor|
  if flavor == "cherry"
    return 5
  else
    return "Whoops! You got nothing"
  end
end
puts yum_score.call("cherry")









