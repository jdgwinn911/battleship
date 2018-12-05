class Ship
    def initialize(size, name)
        @size = size
        @name = name
    end

    def type_of_ship()
        return @name
    end

    def size_of_ship()
        return @size
    end

    attr_reader :size
    attr_reader :name
end