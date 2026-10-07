puts "Hello, world"

# find the index of the word "Ruby"
ruby_index = "Hello, Ruby" =~ /Ruby/
puts ruby_index

# Print your name 10 times
x = 0
until x == 10
  x = x + 1
  puts "Mish"
end

# Print the string "this is sentence number X" from 1 through 10
x = 1
until x > 10
  puts "This is sentence number #{x.to_s}."
  x = x + 1
end
