require_relative "ship.rb"
class Cell 
    def initialize()
        @status = nil
        @content = "water" 
        @size = size 
    end

    def if_hit()
        if @content =="water"
            @status =  "missed"
        elsif @content == ship
           @status = ship.take_a_hit()
        end
    end

    def place_on_cell(ship, direction)
        @content = ship
    end

    def to_s()
        @content == "water" ? @content : @content.name
    end
    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end