def calculate_gamma_rate(input)
  count_of_zeroes = 0
  count_of_ones = 0
  gamma_rate=""
  data = input.split("\n")
  data.each do |num|
    binary = num.split("")
    binary.each do { |curr_char| curr_char = "0" ? count_of_zeroes+=1 : count_of_ones+=1 }
  end
end

# Consider looping by the length of the strings (First; they should all be the same), inner loop to grab each number at that char; use ternary operator to compare