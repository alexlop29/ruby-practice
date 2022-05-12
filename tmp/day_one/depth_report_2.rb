# frozen_string_literal: true

puts <<~HEREDOC
  Initiating a Sonar Sweep
  ...
  Generating a Report of the Sea Level Depth
HEREDOC

DIRECTORY = __dir__
SEA_LEVEL_REPORT = File.join(DIRECTORY, 'sonar_sweep.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)
SPLIT_SEA_LEVEL_DATA = SEA_LEVEL_DATA.split
INT_SEA_LEVEL_DATA = SPLIT_SEA_LEVEL_DATA.map(&:to_i)
# https://gist.github.com/awesome/8674666
# https://ruby-doc.org/core-2.5.0/File.html
# https://ruby-doc.org/core-3.1.1/String.html

puts <<~HEREDOC
  ...
  Analyzing the Data
  ...
  Calculating the Sums of a Three-Measurement Sliding Window
  ...
HEREDOC

counter = 0

INT_SEA_LEVEL_DATA.each_with_index do |_data, index|
  break if index == INT_SEA_LEVEL_DATA.size - 3

  first_window_sum = INT_SEA_LEVEL_DATA[index] + INT_SEA_LEVEL_DATA[index + 1] + INT_SEA_LEVEL_DATA[index + 2]
  second_window_sum = INT_SEA_LEVEL_DATA[index + 1] + INT_SEA_LEVEL_DATA[index + 2] + INT_SEA_LEVEL_DATA[index + 3]

  counter += 1 if first_window_sum < second_window_sum
end

puts "#{counter} three-measurement sliding window were larger than the previous measurement."

# NOTE: App-Sec Improvement; Add a validation check to the data file; e.g. a SHA check.
# NOTE: Add error handling
