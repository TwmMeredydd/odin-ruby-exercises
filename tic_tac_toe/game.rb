# frozen_string_literal: true

require_relative 'grid'

class Game
  PLAYERS = %w[X O].freeze

  def initialize
    @player_num = 0
    @board = Grid.new
    game_loop
  end

  def input_coord
    loop do
      begin
        coord = gets.chomp.to_i
      rescue => e
        puts 'Invalid input: should be an integer from 1 -> 3 inclusive'
      else
        return coord - 1 if coord >= 1 && coord <= 3

        puts 'Invalid input: should be an integer from 1 -> 3 inclusive'
      end
    end
  end

  def player
    PLAYERS[@player_num]
  end

  def game_loop
    @board.display
    loop do
      puts "Player #{player}'s turn."
      row = col = 0
      loop do
        puts 'Enter row to mark (1 -> 3):'
        row = input_coord
        puts 'Enter column to mark (1 -> 3):'
        col = input_coord

        break if @board.occupied?(row, col)

        puts 'Position taken already!'
      end

      @board.mark(row, col, player)
      @board.display

      if @board.check_win?(player, row, col)
        puts "Player #{player} wins!"
        return player
      elsif @board.filled?
        puts 'It\'s a draw!'
        return 'D'
      end

      @player_num = (@player_num + 1) % 2
    end
  end
end

g = Game.new
