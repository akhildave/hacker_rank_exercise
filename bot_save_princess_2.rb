#!/bin/ruby

# Get the input from user input
def start
  puts 'Enter size of matrix'
  grid_size = gets.to_i
  fail 'Grid size should be < 100 ' if grid_size > 100

  # position of bot
  puts 'Enter the position of bot(m) separated by space Ex: 0 2'
  bot_pos_x, bot_pos_y = gets.strip.split.map(&:to_i)

  # Get matrix rows from user input
  puts 'Specify matrix rows: Values must be separated by space'
  princess_position = get_princess_position(grid_size)

  # Find the next move
  puts next_move(bot_pos_x, bot_pos_y, princess_position)
end

# Find princess position from user input - matrix rows
def get_princess_position(grid_size)
  princess_position = nil
  grid = Array.new(grid_size)
  (0...grid_size).each do |i|
    grid_row = gets.split
    princess_position = [i, grid_row.index('p')] if grid_row.include? 'p'
    grid[i] = grid_row
  end
  princess_position
end

# Find the next move the bot makes to rescue the princess.
def next_move(bot_pos_x, bot_pos_y, princess_position)
  case
  when princess_position[0] - bot_pos_x < 0 then move = 'UP'
  when princess_position[0] - bot_pos_x > 0 then move = 'DOWN'
  when princess_position[1] - bot_pos_y < 0 then move = 'LEFT'
  when princess_position[1] - bot_pos_y > 0 then move = 'RIGHT'
  end
  move
end

start
