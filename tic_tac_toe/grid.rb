# frozen_string_literal: true

class Grid
  attr_reader :grid_array

  def initialize
    @grid_array = Array.new(3) { Array.new(3) { ' ' } }
  end

  def mark(player, row, col)
    @grid_array[row][col] = player
  end

  def check_win(player, row, col)
    return true if @grid_array.map { |r| r[col] }.uniq == [player]
    return true if @grid_array[row].uniq == [player]
    return true if @grid_array.each_with_index.map { |r, i| r[i] }.uniq == [player]
    return true if @grid_array.each_with_index.map { |r, i| r[-i] }.uniq == [player]

    false
  end

  def display_grid
    puts <<-BOARD

      #{display_row(@grid_array[0])}
      —————————
      #{display_row(@grid_array[1])}
      —————————
      #{display_row(@grid_array[2])}

    BOARD
  end

  def display_row(row)
    "#{row[0]} | #{row[1]} | #{row[2]}"
  end
end
