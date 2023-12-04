red = 12
green = 13
blue = 14
possible_ids = []
input = File.open('input').read
input.each_line do |line|
  game_id = line.match(/Game (\d+)/)[1]
  sets = line.split(":")[1].split(";")
  game_possible = true
  sets.each do |set|
    if (set.match(/(\d+) red/) == nil)
      red_set = 0
    else
      red_set = set.match(/(\d+) red/)[1].to_i
    end

    if (set.match(/(\d+) blue/) == nil)
      blue_set = 0
    else
      blue_set = set.match(/(\d+) blue/)[1].to_i
    end

    if (set.match(/(\d+) green/) == nil)
      green_set = 0
    else
      green_set = set.match(/(\d+) green/)[1].to_i
    end

    if (red_set > red || blue_set > blue || green_set > green)
      game_possible = false
    end
  end
  possible_ids << game_id.to_i if game_possible
end

puts "Game ID Sum: #{possible_ids.sum}"


