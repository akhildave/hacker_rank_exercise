class Bot
  attr_reader :n, :grid

  def initialize(n, grid)
    @n    = n
    @grid = grid
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
    moves.join('')
  end

  def next_move(_n, x, y, princess, _grid)
    move = 'UP' if (princess[0] - x) < 0
    move = 'DOWN' if (princess[0] - x) > 0
    move = 'LEFT' if (princess[1] - y) < 0
    move = 'RIGHT' if (princess[1] - y) > 0
    move
  end

end