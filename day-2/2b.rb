game_powers = []
input = File.open('input').read
input.each_line do |line|
  game_id = line.match(/Game (\d+)/)[1]
  sets = line.split(":")[1].split(";")
  red_set = []
  green_set = []
  blue_set = []
  sets.each do |set|
    puts set
    if (set.match(/(\d+) red/) == nil)
      red_set << 0
    else
      red_set << set.match(/(\d+) red/)[1].to_i
    end

    if (set.match(/(\d+) blue/) == nil)
      blue_set << 0
    else
      blue_set << set.match(/(\d+) blue/)[1].to_i
    end

    if (set.match(/(\d+) green/) == nil)
      green_set << 0
    else
      green_set << set.match(/(\d+) green/)[1].to_i
    end
  end
  red_max = red_set.sort[-1]
  blue_max = blue_set.sort[-1]
  green_max = green_set.sort[-1]
  game_powers << red_max * blue_max * green_max
end

puts "Game Powers Sum: #{game_powers.sum}"


