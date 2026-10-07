# print all lines in the poem that end with "ake" (ignoring periods)

re = /ake\.?$/m

line_index = 0
File.foreach("texts/poem.txt") { |line|
  line_index = line_index + 1
  if re.match? line
    puts "#{line_index}: #{line}"
  end
}
