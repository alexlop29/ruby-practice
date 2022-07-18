def sum_risk_levels_in_height_map(input)
  # Converts the input string into an array of strings, separated by a new line
  data = input.split("\n")
  puts data.inspect

  # Converts each string in the array into a sub-array of separated numbers
  data = data.map { |line| line.chars.map(&:to_i) }
  puts data.inspect

  # Stores the size of the input
  data_size = data.size

  # Placeholder for the risk level calculations
  risk_levels = []

  # Iterates through the list of arrays
  data.each_with_index { |curr_array, index|
    puts "current_array: #{curr_array}\n\n"
    puts "next_array: #{data[index+1]}\n\n"

    # Stores the size of the curr_array
    curr_array_size = curr_array.size
    
    # Iterates through the sub-list of the array
    curr_array.each_with_index { |num, position|
      puts "#{num}\n\n"

      # Algorithm for the first row
      if index == 0
        # NOTE: the `else..puts false` are for debugging purposes

        # Algorithm for the left-most digit in the curr_array
        if position == 0
          if num < curr_array[position+1] and num < data[index+1][position]
            puts true
            risk_levels.push(num+1)
          else
            puts false
          end

        # Algorithm for the right-most digit of the curr_array
        elsif position == curr_array_size-1
          if num < curr_array[position-1] and num < data[index+1][position]
            puts true
            risk_levels.push(num+1)
          else
            puts false
          end

        # Algorithm for all other positions in the curr_array
        else
          if num < curr_array[position-1] and num < curr_array[position+1] and num < data[index+1][position]
            puts true

            # calculates the risk level of a low point and appends it to the list
            risk_levels.push(num+1)
          else
            puts false
          end
        end
    
      # Algorithm for the last row
      elsif index == data_size-1
        
        # Algorithm for the left-most digit in the curr_array
        if position == 0
            if num < curr_array[position+1] and num < data[index-1][position]
              puts true
              risk_levels.push(num+1)
            else
              puts false
            end

        # Algorithm for the right-most digit of the curr_array
        elsif position == curr_array_size-1
          if num < curr_array[position-1] and num < data[index-1][position]
            puts true
            risk_levels.push(num+1)
          else
            puts false
          end
        
        # Algorithm for all other positions in the curr_array
        else
          if num < curr_array[position-1] and num < curr_array[position+1] and num < data[index-1][position]
            puts true

           # calculates the risk level of a low point and appends it to the list
            risk_levels.push(num+1)
          else
            puts false
           end
        end

      # Algorithm for all other rows
      else
        # Algorithm for the left-most digit in the curr_array
        if position == 0
          if num < data[index-1][position] and num < curr_array[position+1] and num < data[index+1][position]
            puts true
            risk_levels.push(num+1)
          else
            puts false
          end

        # Algorithm for the right-most digit of the curr_array
        elsif position == curr_array_size-1
          if num < data[index-1][position] and num < curr_array[position-1] and num < data[index+1][position]
            puts true
            risk_levels.push(num+1)
          else
            puts false
          end
        
        # Algorithm for all other positions in the curr_array
        else
          if num < curr_array[position-1] and num < curr_array[position+1] and num < data[index-1][position] and num < data[index+1][position]
            puts true

           # calculates the risk level of a low point and appends it to the list
            risk_levels.push(num+1)
          else
            puts false
          end
        end
      end
    }
    puts "risk levels: #{risk_levels}"
  }
  puts risk_levels.sum
  return risk_levels.sum
end

DIRECTORY = __dir__
DATA = File.join(DIRECTORY, '../inputs/09.txt')
READ_DATA = File.read(DATA)

sum_risk_levels_in_height_map(READ_DATA)