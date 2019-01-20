require_relative "ship.rb"
class Cell 
    def initialize()
        @status = "open"
        @content = "(-)" 
        @size = size 
        @ship = ship
        @name = name
    end

    def if_hit()
        if @content.class == Ship
            @content.take_a_hit() 
            @status = "X" 
        elsif @content == "(-)"
           @status = "O"
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
        # @content == "(-)" ? @content : @content.name

        if @status == "open"
            return "(-)"
        elsif @status == "taken"
            return @content.name
        end
        "(#{@status})"

    end
    attr_reader :name
    attr_reader :ship
    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end


