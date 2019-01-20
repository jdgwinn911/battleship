require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
puts "what level of difficulty do you choose? easy[e], hard[h], difficult[d]"
answer = gets.chomp
system('cls')
if answer == "e"
   o = Grid.new(12, "player"); m = Grid.new(12, "ai"); ai = Enemy.new(m, o)
elsif answer == "h"
   o = Grid.new(24,"player"); m = Grid.new(24, "ai"); ai = Enemy.new(m, o)
else
   o = Grid.new(36, "player"); m = Grid.new(36, "ai"); ai = Enemy.new(m, o)
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

def show_opp_board(m)
    show_board(m)
end


def random_enemy_atk()

end


def begin_game(o, m, ai)
    intro = {ship1: "Carrier = 5", ship2: "Battleship = 4", ship3: "Cruiser = 3", ship4: "Submarine = 2"} 
    show_opp_board(m); show_board(o)
    intro.each_value do |v|
        p v
    end

    puts "What row would you want to place the carrier?"; replyrow = gets.chomp.to_i
    puts "What column would you want to place the carrier?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
    system('cls')
    puts o.mastor_funk(Ship.new(5,"(C)"), replyrow, replycol, replyvert)
    show_opp_board(m); show_board(o)
    

    puts "what row would you like to place the battleship?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you battleship?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship horizontal or vertical?"; replyvert = gets.chomp
    system('cls')
    puts o.mastor_funk(Ship.new(4,"(B)"), replyrow, replycol, replyvert)
    show_opp_board(m); show_board(o)

    puts "what row would you want to place the Cruiser?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you Cruiser?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
    system('cls')
    puts o.mastor_funk(Ship.new(3,"(c)"), replyrow, replycol, replyvert)
    show_opp_board(m); show_board(o)

    puts "what row would you want to place the Submarine?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you Submarine?";  replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
    system('cls')
    puts o.mastor_funk(Ship.new(2,"(S)"), replyrow, replycol, replyvert)
    ai.deploy_opp_ships()
    show_opp_board(m);  show_board(o)

    puts "what row would you like to fire at?"; replyrow = gets.chomp.to_i
    puts"what column would you like to fire at?"; replycol = gets.chomp.to_i
    # puts o.if_hit()
    m.atk_cell(replyrow, replycol)
    system('cls')
    show_opp_board(m); show_board(o)

    spot = o.pick_open_cell()
    o.atk_cell(spot[0], spot[1])
    system('cls')
    
    show_opp_board(m); show_board(o)
    puts "look at your grid! the enemy has fired"
    puts "--------------------------------------"
    puts "now your turn!"
    puts "what row would you like to fire at?"; replyrow = gets.chomp.to_i
    puts"what column would you like to fire at?"; replycol = gets.chomp.to_i
    m.atk_cell(replyrow, replycol)
    system('cls')
    show_opp_board(m); show_board(o)

    spot = o.pick_open_cell()
    o.atk_cell(spot[0], spot[1])
    system('cls')
    
    show_opp_board(m); show_board(o)
    puts "look at your grid! the enemy has fired"
    puts "--------------------------------------"
    puts "now your turn!"
    puts "what row would you like to fire at?"; replyrow = gets.chomp.to_i
    puts"what column would you like to fire at?"; replycol = gets.chomp.to_i
    m.atk_cell(replyrow, replycol)
    system('cls')
    show_opp_board(m); show_board(o)




    




     
    

    
        









    

    
end

begin_game(o, m, ai)

