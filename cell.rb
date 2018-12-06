require_relative "ship.rb"
class Cell
    def initialize(coordinates)
        @coordinates = coordinates
        @status = nil
        @content ||= "water"
    end

    def if_hit()
        if @content =="water"
            return "missed"
        elsif @content == ship
            ship.take_a_hit()
        end
    end


    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end