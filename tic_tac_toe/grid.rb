class Grid
    attr_reader :grid_array

    def initialize()
        @grid_array = Array.new(3) { Array.new(3) {''} }
    end
end