total_points = 0
input = File.open('input').read
input.each_line do |line|
  w_numbers = line.split(": ")[1].split(" | ")[0].split
  numbers = line.split(": ")[1].split(" | ")[1].split
  winners = w_numbers & numbers
  if winners.count == 0
    points = 0
  elsif winners.count == 1
    points = 1
  else
    points = 2**(winners.count - 1)
  end
  total_points += points
end
puts "Total points: #{total_points}"