class Ship
    def initialize(size, name)
        @size = size
        @name = name
        @hit_count = 0
    end

    def type_of_ship()
        return @name
    end

    def size_of_ship()
        return @size
    end

    def take_a_hit()
    end


    attr_reader :size
    attr_reader :name
    attr_reader :hit_count
end