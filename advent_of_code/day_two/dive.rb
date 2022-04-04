# frozen_string_literal: true

DIRECTORY = __dir__
SEA_LEVEL_REPORT = File.join(DIRECTORY, '02.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)
SPLIT_SEA_LEVEL_DATA = SEA_LEVEL_DATA.split("\n")

horizontal_position = 0
depth = 0

SPLIT_SEA_LEVEL_DATA.each_with_index do |data, _index|
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

puts final_answer.to_s
