# types out some dot-dot-dot ellipses one at a time, for SUSPENSE
def dots(n = 3, space = 0.1)
  print "   "
  count = 0
  until count == n
    print "."
    sleep(space)
    count += 1
  end
end

# game intro/instructions
def intro
  puts "SUPER FUN GAME ALERT!"
  sleep(0.5)
  puts "i'm thinking of a number between 0 and 100. With each guess you make, I'll tell you if you need to go lower or higher"
  sleep(0.7)
  puts "let's goooo...."
  sleep(0.3)
  puts
end

# the actual game
def do_game
  num = rand(100)
  correct = false
  tries = 0

  while not correct
    puts "guess the number: "
    guess = gets
    tries = tries + 1

    dots()

    if guess.to_i == num
      correct = true
      puts "Hooray, you did it! You guessed my number and it only took " + tries.to_s + " tries"
    else
      if guess.to_i > num
        puts "nope. lower ⬇️"
      else
        puts "nope. higher ⬆️"
      end
    end
    puts
  end
end

intro()
do_game()
