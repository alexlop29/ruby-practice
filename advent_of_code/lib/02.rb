def calculate_position_and_depth(input)
  directions = input.split("\n")

  horizontal_position = 0
  depth = 0

  directions.each_with_index do |data, _index|
    direction_by_change = data.split(' ')
    case direction_by_change[0]
    when 'forward'
      horizontal_position += direction_by_change[1].to_i
    when 'up'
      depth -= direction_by_change[1].to_i
    else
      depth += direction_by_change[1].to_i
    end
  end

  final_answer = horizontal_position * depth

  puts "position #{horizontal_position}, depth #{depth}"

  return "position #{horizontal_position}, depth #{depth}"

end

DIRECTORY = __dir__
PLANNED_COURSE = File.join(DIRECTORY, '../inputs/02.txt')
PLANNED_COURSE_DATA = File.read(PLANNED_COURSE)

calculate_position_and_depth(PLANNED_COURSE_DATA)

