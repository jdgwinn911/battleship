class Ship
    def initialize(size, name)
        @size = size
        @name = name
        @hit_count = 0
        @placement 
    end

    def type_of_ship()
        return @name
    end

    def size_of_ship()
        return @size
    end

    def take_a_hit()
        @hit_count += 1
        if @hit_count == @size
            return "#{name.capitalize} was Destroyed"
        else
            return "You hit a ship!"
        end
    end

    def place_ship()
       
    end
    attr_reader :placement
    attr_reader :size
    attr_reader :name
    attr_reader :hit_count
end