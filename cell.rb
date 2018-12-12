require_relative "ship.rb"
class Cell 
    def initialize()
        @status = nil
        @content = "(-)" 
        @size = size 
    end

    def if_hit()
        if @content =="(-)"
            @status =  "missed"
        elsif @content == ship
           @status = ship.take_a_hit()
        end
    end

    def place_on_cell(ship)
        @content = ship
        # if direction == "up"
        #     size[1] + 1
        # elsif direction == "down"
        #     size[0] - 1
        # elsif direction == "left"
        #     size[-1] - 1
        # elsif direction == "right"
        # end

    end

    def to_s()
        @content == "(-)" ? @content : @content.name
    end
    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end