
i = 1

while i <= 5
  puts "Printing #{i}"
  i += 1
end


array = [1, 2, 3, 4, 5]

array.each { |i| puts "Printing #{i}"}

array.each_with_index { |i, index| puts "Index #{index}: #{i}" }