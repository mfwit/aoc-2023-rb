parts = []
grid = []
y = 0
offsets = [-1, 0, 1]
input = File.open('input').read
input.each_line do |line|
  horz = []
  line.each_char.with_index do |char, index|
    horz.push(char)
  end
  grid.push(horz)
  # puts horz
end
puts "Grid Size: #{grid.size}"
while y < 1
  line = grid[y].join
  puts line
  x = 0
  while x < grid[y].size
    char = grid[y][x]
    # puts "Character [#{y},#{x}]: #{char}"
    if char.match?(/\d/)
      part_number = char
      if grid[y][x+1].match?(/\d/)
        part_number += grid[y][x+1]
        if grid[y][x+2].match?(/\d/)
          part_number += grid[y][x+2]
        end
      end
      parts << part_number
    end
    if !part_number.nil? && part_number.length > 1
      x += part_number.length
    else
      x += 1
    end
  end
  y += 1
  # puts "Y: #{y}"
end
puts parts