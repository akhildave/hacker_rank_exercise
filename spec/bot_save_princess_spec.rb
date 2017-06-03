require 'spec_helper'

describe "Rescue the princess" do

  context "Valid Grid" do
    let(:grid_size) { 5 }
    let(:grid) {
      [['p', '-', '-', '-', '-'],
      ['-', '-', '-', '-', '-'],
      ['-', '-', 'm', '-', '-'],
      ['-', '-', '-', '-', '-'],
      ['-', '-', '-', '-', '-']]
    }
    let(:bot) { Bot.new(grid_size, grid) }

    it "Grid size should be odd number and should be between 3 and 100" do
      number = true if grid_size >= 3 || grid_size < 100
      expect(number).to eql true
      expect(grid_size.odd?).to eql true
    end

    it "Bot should be in center of the Grid" do
      center = grid_size / 2
      expect(grid[center][center]).to eql "m"
      expect(grid[center][center]).not_to be_empty
    end

    it "Princess Peach is trapped in one of the four corners of a square grid" do
      corners = []
      corners << [0, 0]
      corners << [0, grid_size - 1]
      corners << [grid_size - 1, 0]
      corners << [grid_size - 1, grid_size - 1]
      princess = bot.find_position(grid, "p")
      expect(corners).to include(princess)
    end

    it "Bot rescues princess" do
      bot_x , bot_y = bot.find_position(grid, "m")
      princess_x, princess_y = bot.find_position(grid, "p")
      result = bot.bot_rescuing_princess(bot_x, bot_y, princess_x, princess_y)
      expect(result).to eql ("UP\nUP\nLEFT\nLEFT\n")
    end
  end

end