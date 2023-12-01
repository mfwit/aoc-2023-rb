numbers = []
sum = 0
input = File.open('input').read.split
input.each do |line|
  line_numbers = line.delete("^0-9")
  line_sum = line_numbers[0] + line_numbers[-1]
  numbers << line_sum
  sum += line_sum.to_i
end

puts sum

