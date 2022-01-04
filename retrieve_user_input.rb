# EXAMPLE: 'gets'
irb(main):001:0> puts "What is your name?"
What is your name?
=> nil
irb(main):002:0> name = gets
Alexander
=> "Alexander\n"
irb(main):003:0> 

# EXAMPLE: 'gets.chomp'
irb(main):003:0> puts "What is your name?"
What is your name?
=> nil
irb(main):004:0> name = gets.chomp
Alexander
=> "Alexander"

# EXAMPLE: DIFFERENCE BETWEEN 'gets' ANS 'gets.chomp'
puts "What is your name?"
name = gets
puts "What is your name?"
name2 = gets.chomp

# SUB-EXAMPLE: CONDITIONAL
if name == "Alexander"
  puts "MATCH"
else
  puts "NO"
end

if name2 == "Alexander"
  puts "MATCH"
else
  puts "NO"
end

# OUTPUT
 bundle exec ruby main.rb
What is your name?
Alexander
What is your name?
Alexander
NO
MATCH
