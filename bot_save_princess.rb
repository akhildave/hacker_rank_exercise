#!/bin/ruby

def display_path_to_princess(grid)
  bot_x, bot_y = find_position(grid, 'm')
  princess_x, princess_y = find_position(grid, 'p')
  puts princess_x.to_s + " " + princess_y.to_s
  puts bot_x.to_s + " " + bot_y.to_s
  bot_rescuing_princess(bot_x, bot_y, princess_x, princess_y)
end

# Find and return's the postion of Princess(p) or Bot(m)
def find_position(grid, p_m)
  grid.each_with_index do |row, index|
    @x = index
    @y = row.index(p_m)
    break if @y
  end
  fail "#{p_m == 'p' ? 'Princess' : 'Bot'} not found in grid." unless @y
  [@x, @y]
end

# Bot rescuing princess
def bot_rescuing_princess(bot_x, bot_y, princess_x, princess_y)
  drows = princess_x - bot_x
  dcols = princess_y - bot_y
  moves = []
  moves << (drows < 0 ? "UP\n" * drows.abs : "DOWN\n" * drows)
  moves << (dcols < 0 ? "LEFT\n" * dcols.abs : "RIGHT\n" * dcols)
  puts moves.join('')
end

def start
  m = gets.to_i
  fail 'Grid size should be >= 3 and < 100 ' if m < 3 || m > 100
  fail 'Number should be an odd number' unless m.odd?
  grid = Array.new(m)
  (0...m).each do |i|
    grid[i] = gets.strip.split
  end
  display_path_to_princess(grid)
end

start
