
def print_star(num)
    star_string = "*"
    num.times do
     puts star_string
    star_string = star_string + "*"
  end
end

print_star(5)


# 3. Refactored Solution for the calculate mode challenge
def mode(values)
  h = values.group_by { |i| values.count(i) }
  h.max[1].uniq
end