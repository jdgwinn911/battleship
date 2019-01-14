require_relative "cell.rb"
require_relative "ship.rb"
class Enemycell < Cell
    def if_hit()
        if @content == ship
            @status =  "X"
        elsif @content == "(-)"
           @status = "O"
        end
    end
    
    def to_s()
        return "(-)"
    end

    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end

# "(-)"

# @content == "(-)" ? @content : @content.name