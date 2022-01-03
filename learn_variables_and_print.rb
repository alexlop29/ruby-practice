# NOTE: (alopez) Run commands within an interactive Ruby terminal.
# > irb

# Variable
irb(main):001:0> name = "Alexander"
=> "Alexander"
irb(main):002:0> @name
=> nil

# Array
irb(main):003:0> address = ["123","Anywhere","Street"]
=> ["123", "Anywhere", "Street"]
irb(main):004:0> @address
=> nil
irb(main):005:0> puts address
123
Anywhere
Street
=> nil

# Puts returns a nil value
puts "Alexander"
# p returns a value
p "Ally"
