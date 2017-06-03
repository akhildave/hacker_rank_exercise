#!/bin/ruby
def next_move(_n, x, y, princess, _grid)
  move = 'UP' if (princess[0] - x) < 0
  move = 'DOWN' if (princess[0] - x) > 0
  move = 'LEFT' if (princess[1] - y) < 0
  move = 'RIGHT' if (princess[1] - y) > 0
  move
end

n = gets.to_i
x, y = gets.strip.split.map(&:to_i)
grid = Array.new(n)

princess = nil
(0...n).each do |i|
  matrix_row = gets
  princess = [i, matrix_row.index('p')] if matrix_row.include? 'p'
  grid[i] = matrix_row
end

puts next_move(n, x, y, princess, grid)

# 5
# 2 0
# - - - - -
# - - - - -
# m - - - -
# - - - - p
# - - - - -
#