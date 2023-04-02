require_relative 'grid'

class Game

  @@players = ['X', 'O']

  def initialize
    @player_num = 0
    @board = Grid.new
    game_loop
  end

  def get_coord
    while true do
        begin
          coord = gets.chomp.to_i
        rescue => exception
          puts "Invalid input: should be an integer from 1 -> 3 inclusive"
        else
          return coord-1 if coord >= 1 && coord <= 3
          puts "Invalid input: should be an integer from 1 -> 3 inclusive"
        end
    end
  end

  def player
    @@players[@player_num]
  end

  def game_loop
    @board.display
    while true do
      puts "Player #{player}'s turn."

      while true do
        puts 'Enter row to mark (1 -> 3):'
        row = get_coord
        puts 'Enter column to mark (1 -> 3):'
        col = get_coord

        if @board.occupied?(row, col)
          break
        else
          puts 'Position taken already!'
        end
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
