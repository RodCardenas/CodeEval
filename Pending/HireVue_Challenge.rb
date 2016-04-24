# The input begins with two integers on a line, N and M (1 <= N,M <= 10), separated by a space. Then, N light box row follow, separated by pipe. Each row has M characters either '.' or 'O', indicating a light that is current off or a light that is currently on, respectively.

# Bob operates all electronic lights at the circus. Lately, there is a defective circuit board that is causing him some problems. The circuit board controls a rectangular box filled with N by M lights, which each may be on or off depending on the lighting needs of the performers.
#
# However, each time he presses the button to toggle a particular light on or off, the circuit board toggles not only that light, but also the lights above, below, to the left, and to the right of the light.
#
# O = light is on . = light is off
#

# Bob needs to turn off all the lights. Write a program that prints the minimum number of times he must press a button on the board so that all the lights turn off, or -1 if it is not possible.

# Tests:
# 4 10 ...OOOOOOO|.OO.O.O...|.OO..OO.OO|...O....O.
# 3 3 ..O|OOO|OOO
# 5 7 .O.O...|..O.O..|.O.O..O|.O..OOO|OO.OOOO
lines = File.readlines(ARGV[0])

num_rows = []
num_columns = []
challenges = []

lines.each do |line|
  items = line.split(" ")

  num_rows << items.shift.to_i
  num_columns << items.shift.to_i

  challenges.push items[0].split("|")
end

challenges.each_with_index do |rows,idx|
  lights = []
  rows.each_with_index do |row,id|
    lights[id] = row.chars
    p lights[id]
  end
end
