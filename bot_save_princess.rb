#!/bin/ruby

def display_path_to_princess(grid)
  bot_pos_x, bot_pos_y = find_position(grid, 'm')
  princess_pos_x, princess_pos_y = find_position(grid, 'p')
  bot_rescuing_princess(bot_pos_x, bot_pos_y, princess_pos_x, princess_pos_y)
end

# Find and return's the postion of Princess(p) or Bot(m)
def find_position(grid, p_m)
  grid.each_with_index do |row, index|
    @position_x = index
    @position_y = row.index(p_m)
    break if @position_y
  end
  fail "#{p_m == 'p' ? 'Princess' : 'Bot'} not found" unless @position_y
  [@position_x, @position_y]
end

# Bot rescuing princess
def bot_rescuing_princess(bot_pos_x, bot_pos_y, princess_pos_x, princess_pos_y)
  drows = princess_pos_x - bot_pos_x
  dcols = princess_pos_y - bot_pos_y
  moves = []
  moves << (drows < 0 ? "UP\n" * drows.abs : "DOWN\n" * drows)
  moves << (dcols < 0 ? "LEFT\n" * dcols.abs : "RIGHT\n" * dcols)
  puts moves.join('')
end

# Get the input from user
def start
  puts 'Enter the size of matrix(odd number)'
  m = gets.to_i
  fail 'Required odd number, between 3 and 100 ' if m < 3 || m > 100 || !m.odd?
  puts 'Specify Rows: Bot(m) in center and Princess(p) in one of the 4 corners'
  grid = Array.new(m)
  (0...m).each do |i|
    grid[i] = gets.strip.split
  end
  display_path_to_princess(grid)
end

start
