puts <<HEREDOC
Initiating a Sonar Sweep
...
Generating a Report of the Sea Level Depth
HEREDOC

DIRECTORY = File.expand_path(File.dirname(__FILE__))
SEA_LEVEL_REPORT = File.join(DIRECTORY,'sonar_sweep.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)
SPLIT_SEA_LEVEL_DATA = SEA_LEVEL_DATA.split
INT_SEA_LEVEL_DATA = SPLIT_SEA_LEVEL_DATA.map(&:to_i)
# https://gist.github.com/awesome/8674666
# https://ruby-doc.org/core-2.5.0/File.html
# https://ruby-doc.org/core-3.1.1/String.html

puts <<HEREDOC
...
Analyzing the Data
...
Calculating the Increase in Depth
...
HEREDOC

counter = 0

INT_SEA_LEVEL_DATA.each_with_index { | data, index |
    break if index == (INT_SEA_LEVEL_DATA.size)-1

    upcoming_data_point = INT_SEA_LEVEL_DATA[index+1]

    if ( data < upcoming_data_point )
        counter += 1
    end
}

puts "#{counter} data points were larger than the previous measurement."

# NOTE: App-Sec Improvement; Add a validation check to the data file; e.g. a SHA check.
# NOTE: Add error handling
