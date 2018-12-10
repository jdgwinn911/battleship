require_relative "ship.rb"
class Cell < Ship
    def initialize()
        @status = nil
        @content = "water" 
    end

    def if_hit()
        if @content =="water"
            @status =  "missed"
        elsif @content == ship
           @status = ship.take_a_hit()
        end
    end

    def place(ship)
        @content = ship
    end

    def to_s()
        @content == "water" ? @content : @content.name
    end



    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end