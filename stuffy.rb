
    puts "What row would you want to place the carrier?"; replyrow = gets.chomp.to_i
    puts "What column would you want to place the carrier?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp


    
    puts "what row would you like to place the battleship?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you battleship?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship horizontal or vertical?"; replyvert = gets.chomp

    
    puts "what row would you want to place the Cruiser?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you Cruiser?"; replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp

    puts "what row would you want to place the Submarine?"; replyrow = gets.chomp.to_i
    puts "what column would you like to place you Submarine?";  replycol = gets.chomp.to_i
    puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp

    ships = ["carrier", "battleship", "cruiser", "sub "]

    ships.each do |v|
        while true
            puts "What row would you want to place the #{v}?"; replyrow = gets.chomp.to_i
            puts "What column would you want to place the #{v}";replycol = gets.chomp.to_i
            puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
            if replycol < 12 && replyrow < 12
                break
            end
        end




    end