class Board
    def initialize(id, numbers)
        @id = id
        @numbers = numbers
        @width = @numbers[0].size
    end
    def get_id
        @id
    end
    def get_board
        @numbers
    end
    def mark(num_drawn)
        @numbers.map { |row|
          if row.include?(num_drawn)
            row[row.find_index(num_drawn)] = "X"
          end
        }
    end
    def win
      @numbers.map { |row| 
        if row.count("X") == @width
          return true
        end
      }
      puts @numbers.inspect
      puts @numbers.transpose.inspect
      @numbers.transpose.map { | row |
        if row.count("X") == @width
          return true
        end
      }
    end
end

def winning_card(input)
    # Converts string into an array, split by each new line; Removes any empty arrays
    data = input.split("\n").reject(&:empty?)

    # Removes and retrieves the first item in data, and converts the string ot an integer
    numbers_drawn = data.shift.split(",").map(&:to_i)

    # Converts array of strings into an array of integers
    data = data.map { |line| line.split.map(&:to_i) }

    # Groups the arrays by sets of five
    boards = data.each_slice(5).to_a

    # Creates a board class for each board (i.e. sub-array)
    boards.each_index { |index| Board.new(index, boards[index]) }

    # For each number drawn, go through each board, and mark the num
    numbers_drawn.each { |number|
      ObjectSpace.each_object(Board) { |i|
        i.mark(number)
        if i.win == true
            temp = i.get_board
            puts temp.inspect
            puts "\n\n\n\n\n\n\n"
            filtered = temp.map { |row| row.keep_if { | item | item.is_a?Integer }  }.reject(&:empty?)
            puts filtered.inspect
            puts filtered.flatten.sum
            puts number * filtered.flatten.sum
            puts (i.get_id) + 1
        end
        break
      }
    break
    }
end

# DIRECTORY = __dir__
# DATA = File.join(DIRECTORY, '../inputs/04.txt')
# READ_DATA = File.read(DATA)

# winning_card(READ_DATA)

# Resources
# https://stackoverflow.com/questions/975769/how-to-split-a-delimited-string-in-ruby-and-convert-it-to-an-array
# https://stackoverflow.com/questions/48412311/convert-array-of-strings-to-an-array-of-integers


# Works for the sample, but does not work for the