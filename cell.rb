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

    def take(ship)
        @content = ship
        @status = "taken"
    end

    def content()
        @content

    end

    def to_s()
        @content == "(-)" ? @content : @content.name
    end
    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end