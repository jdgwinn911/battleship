require_relative "ship.rb"
class Grid
    def initialize(size = 12)
        x = Array.new(size, Array.new(size, ""))
        x.each do |v|
            p v
        end
    end

    attr_reader :size
    attr_reader :x
end

Grid.new(24)