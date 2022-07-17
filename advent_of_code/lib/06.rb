def calculate_exponential_increase(input,days)
  lanternfish = input.split(",").map(&:to_i)
  puts lanternfish.inspect
  days.times do
    create_new_fish = 0
    lanternfish.each_index { |index|
      lanternfish[index] -= 1
      if lanternfish[index] == -1
        lanternfish[index] = 6
        create_new_fish += 1
      end
    }
    puts lanternfish.inspect
    create_new_fish.times do lanternfish.push(8) end
    puts lanternfish.inspect
  end
  return lanternfish.size
end