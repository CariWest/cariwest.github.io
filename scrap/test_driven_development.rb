
# methods
def love_that_num(num)
  num > 7 && num < 14 ? "I love that number!" : "That is a terrible number."
end

# tests
puts method(:love_that_num).arity == 1
puts love_that_num(13) == "I love that number!"
puts love_that_num(2) == "That is a terrible number."

puts love_that_num(9.2)