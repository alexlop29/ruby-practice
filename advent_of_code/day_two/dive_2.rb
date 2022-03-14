DIRECTORY = File.expand_path(File.dirname(__FILE__))
SEA_LEVEL_REPORT = File.join(DIRECTORY,'02.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)
SPLIT_SEA_LEVEL_DATA = SEA_LEVEL_DATA.split("\n")

horizontal_position=0
depth=0
aim=0

SPLIT_SEA_LEVEL_DATA.each_with_index { | data, index |
    direction_by_change = data.split(" ")
    if direction_by_change[0] == "forward"
        horizontal_position += direction_by_change[1].to_i
        depth += aim * direction_by_change[1].to_i
    elsif direction_by_change[0] == "up"
        aim -= direction_by_change[1].to_i
    else
        aim += direction_by_change[1].to_i
    end
}

final_answer=horizontal_position*depth

puts "#{final_answer}"
