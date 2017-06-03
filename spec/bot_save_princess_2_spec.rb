require 'spec_helper'

describe "Rescue the princess 2" do

  context "Valid Grid 1" do
    let(:grid_size) { 5 }
    let(:bot_x) { 2 }
    let(:bot_y) { 0 }
    let(:princess) { [0,0] }
    let(:grid) {
    [['p', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['m', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-']] }
    let(:bot) { Bot.new(grid_size, grid) }

    it "Bot rescues princess" do
      result = bot.next_move(grid_size, bot_x, bot_y, princess, grid)
      expect(result).to eql ("UP")
    end
  end

  context "Valid Grid 2" do
    let(:grid_size) { 5 }
    let(:bot_x) { 2 }
    let(:bot_y) { 0 }
    let(:princess) { [4,0] }
    let(:grid) {
    [['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['m', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['p', '-', '-', '-', '-']] }
    let(:bot) { Bot.new(grid_size, grid) }

    it "Bot rescues princess" do
      result = bot.next_move(grid_size, bot_x, bot_y, princess, grid)
      expect(result).to eql ("DOWN")
    end
  end

  context "Valid Grid 3" do
    let(:grid_size) { 5 }
    let(:bot_x) { 2 }
    let(:bot_y) { 0 }
    let(:princess) { [2,2] }
    let(:grid) {
    [['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['m', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-']] }
    let(:bot) { Bot.new(grid_size, grid) }

    it "Bot rescues princess" do
      result = bot.next_move(grid_size, bot_x, bot_y, princess, grid)
      expect(result).to eql ("RIGHT")
    end
  end

  context "Valid Grid 4" do
    let(:grid_size) { 5 }
    let(:bot_x) { 2 }
    let(:bot_y) { 3 }
    let(:princess) { [2,0] }
    let(:grid) {
    [['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-'],
    ['p', '-', '-', 'm', '-'],
    ['-', '-', '-', '-', '-'],
    ['-', '-', '-', '-', '-']] }
    let(:bot) { Bot.new(grid_size, grid) }

    it "Bot rescues princess" do
      result = bot.next_move(grid_size, bot_x, bot_y, princess, grid)
      expect(result).to eql ("LEFT")
    end
  end

end