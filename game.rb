require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
puts "what level of difficulty do you choose? easy[e], hard[h], difficult[d]"
answer = gets.chomp
if answer == "e"
   o = Grid.new(12)
elsif answer == "h"
   o = Grid.new(24)
else
   o = Grid.new(36)
end

def show_board(o)
    countertop = 0
    print "  "
    o.grid.each_with_index do |v, i|
        if countertop < 10
        print "  #{countertop}"
        countertop += 1
        else print " #{countertop}"
            countertop += 1
        end
    end
    puts "\n"
    counter = 0
    o.grid.each_with_index do |v, i|
        v.each_with_index do |k, i|
            if i == 0 
                print " #{counter} #{k.to_s}"
                counter += 1   
            elsif i == o.end_point
                print "#{k.to_s} \n"
            else
                print "#{k.to_s}"
            end
        end
    end
end

def begin_game(o)
    intro = {ship1: "Carrier = 5",
        ship2: "Battleship = 4",
        ship3: "Cruiser = 3",
        ship4: "Submarine = 2"
    } 
    show_board(o)
    intro.each_value do |v|
        p v
    end

    puts "What row would you want to place the ships?"
    replyrow = gets.chomp.to_i
    puts "What column would you want to place the ship?"
    replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"
    replyvert = gets.chomp
    o.check_location(Ship.new(5,"Bot"), replyrow, replycol, replyvert)
    show_board(o)
    
end


begin_game(o)

# p o.check_location(Ship.new(5,"Bot"), 35, 35, "vertical")


# print o.grid[2][2].content.to_s
