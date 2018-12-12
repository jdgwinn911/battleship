require_relative "ship.rb"
require_relative "cell.rb"

class Grid < Cell
    def initialize(size = 12)
        @grid = Array.new(size) {Array.new(size) {Cell.new}}
        @end_point = size - 1
    end

    attr_reader :start_point
    attr_reader :grid
    attr_reader :size
    attr_reader :end_point
end

o = Grid.new(24)
counter = 1 
letters = 
('A'..'Z').to_a
print "  "

o.grid.each_with_index do |v, i|
    print "  #{letters[i]}"
end
puts "\n"
o.grid[1][2].place_on_cell(Ship.new(2,"Bot"))


o.grid.each_with_index do |v, i|
    v.each_with_index do |k, i|
        if i == 0 
            print " #{counter} #{k.to_s}"
            counter += 1   
        elsif i == o.end_point
            print "#{k.to_s} \n"
        else
            print "#{k.to_s}"
        end
    end
end
# print o.grid[2][2].content.to_s
