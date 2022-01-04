# NOTE: (alopez) These examples are executed within an interactive Ruby terminal.
# > irb

# EXAMPLE: VARIABLE
irb(main):002:0> name = "Alexander"
=> "Alexander"
irb(main):003:0> puts name
Alexander
=> nil
irb(main):004:0> @name
=> nil

# EXAMPLE: ARRAY
irb(main):006:0> address = ["123","Anywhere","Street"]
=> ["123", "Anywhere", "Street"]
irb(main):007:0> puts address
123
Anywhere
Street
=> nil
irb(main):008:0> @address
=> nil

# EXAMPLE: DIFFERENCE BETWEEN 'puts' AND 'p'
# 'puts' RETURNS A 'nil' VALUE
irb(main):010:0> puts "Alexander"
Alexander
=> nil
# 'p' RETURNS A NON 'nil' VALUE
irb(main):011:0> p "Alexander"
"Alexander"
=> "Alexander"
irb(main):012:0> @Alexander
=> nil

# EXAMPLE 2: DIFFERENCE BETWEEN 'puts' AND 'p'
# 'p' RETURNS AN ARRAY IN CODE FORM (ORIGINAL FORMAT)
# 'puts' RETURNS AN ARRAY SEPERATED BY A NEW LINE
irb(main):013:0> p [1,2,3,4]
[1, 2, 3, 4]
=> [1, 2, 3, 4]
irb(main):014:0> puts [1,2,3,4]
1
2
3
4
=> nil

# NOTE ON DECLARING VARIBLES:
# RUBY VARIABLES DO NOT REQUIRE SEMICOLONS OR A DATA TYPE TO BE DECLARED. 
# RUBY IS A JUST-IN-TIME (JIT) INTERPRETED LANGAUGE; AUTOMATICALLY RECOGNIZES THE DATA TPYE BASED ON THE STORED VALUE
# REFERENCE: COMPREHENSIVE RUBY PROGRAMMING BY JORDAN HUDGENS (PACKT)
