class Board
  def initialize(id, numbers)
    @id = id
    @numbers = numbers
    @height = @numbers.length
    @width = @numbers[0].split.size
    puts "This is a #{@height}x#{@width} board."
  end
  def get_card
    @numbers
  end
  def mark(num_drawn)
    puts @numbers.map { |row| row.gsub(/(\b#{num_drawn}\b)/i, "X") }
  end
  def win
    # @numbers.map { |row| 
    #   if row.count("X") == @width
    #     puts "we have a winner."
    # }
    # puts @numbers.split("\n")
    puts @numbers
    puts @numbers.is_a?Array
    puts @numbers.map { |row| row.split }
    puts @numbers.transpose
    # Must program vertical win now 
  end
end

def winning_card(input)
  puts input
  data = input.split("\n")
  numbers_drawn = ((data.shift).split(",")) # Removes and returns leading elements
  data.delete("")
  boards = data.each_slice(5).to_a
  puts "numbers drawn: #{numbers_drawn}\n\n"
  puts "data: #{data}\n\n"
  puts "boards: #{boards}\n\n"
  boards.each_index { |index|
      puts "board#{index}: #{boards[index]}\n\n"
      board = Board.new(index, boards[index])
      board.get_card
  }
  puts "num of Board objects: #{ObjectSpace.each_object(Board).count}"
  numbers_drawn.each {|number|
    puts "num drawn: #{number}"
    ObjectSpace.each_object(Board) { |i|
      i.mark(number)
      puts "\n\n\n"
      i.win
      # break
      # LEFT: Work on func to check if won

    }
    break
  }
end

# Resources
# - https://ruby-doc.org/core-3.1.1/Array.html#method-i-shift
# https://stackoverflow.com/questions/48412311/convert-array-of-strings-to-an-array-of-integers
# https://stackoverflow.com/questions/14318079/how-do-i-list-all-objects-created-from-a-class-in-ruby
# https://ruby-doc.org/core-3.1.1/ObjectSpace.html#method-c-each_object
# https://stackoverflow.com/questions/6145084/how-to-find-each-instance-of-a-class-in-ruby
# https://stackoverflow.com/questions/3686544/determining-if-an-array-of-strings-contains-a-certain-substring-in-ruby
# https://stackoverflow.com/questions/4066349/ruby-rails-working-with-gsub-and-arrays
# https://www.rubyguides.com/2019/07/ruby-gsub-method/
# https://stackoverflow.com/questions/2793427/ruby-enclose-selected-whole-words-in-brackets/2793443#2793443


  # def structure
  #   @numbers.map(&:to_i)
  #   # @numbers.each_index { |sublist| sublist.to_i }
  #   puts @numbers
  #   # board = @numbers.map(&:to_i)
  #   # puts board
  # end

      # @numbers = numbers.split.to_i.each_slice(5)
    # @numbers = numbers.map { |sr| sr.split.map(&:to_i).each_slice(5) }
    # @numbers = numbers.map { |sr| sr.scan(/\d+/).map(&:to_i) }.to_a
        # @numbers.map!(&:to_i)

        # puts num.is_a?Integer
        # puts "num: #{number}"
        # puts number.is_a?Integer
        # puts number.is_a?String
        # puts curr_board_nums
        # puts curr_board_nums.is_a?Array
        # puts "look #{ curr_board_nums.any? { |s| s.include?(number) } }"
        # puts "replace: #{curr_board_nums.map { |s| puts s; s.gsub(/(\b#{number}\b)/i, "X") }}"


        # numbers_drawn = ((data.shift).split(",")).map(&:to_i) # Removes and returns leading elements
        # number = num.to_s
