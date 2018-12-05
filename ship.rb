class Ship
    def initialize(length, name)
        @length = length
        @name = name
        @hits = 0 
        @spot = false
    end

    def carrier()
        Ship.new(5, "Carrier")
    end

    attr_reader :length, :name
end