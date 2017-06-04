class Bot
  attr_reader :n, :grid

  def initialize(n, grid)
    @n    = n
    @grid = grid
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
    moves.join('')
  end

  # Find next move to rescue princess
  def next_move(_n, bot_pos_x, bot_pos_y, princess_position, _grid)
    case
    when princess_position[0] - bot_pos_x < 0 then move = 'UP'
    when princess_position[0] - bot_pos_x > 0 then move = 'DOWN'
    when princess_position[1] - bot_pos_y < 0 then move = 'LEFT'
    when princess_position[1] - bot_pos_y > 0 then move = 'RIGHT'
    end
    move
  end
end
