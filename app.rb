class Board
    @@code = ''
    @@correct_order = 0
    @@correct_guss = 0

    @@b1 = "|   |   |   |   |"
    def print_board()
        puts @@b1
        puts "correct order: #{@@correct_order} | correct possition: #{@@correct_guss}"
    end
end

class Player < Board
    @@player_choise = ''
    def player_input()
        puts "insert a 4 digit number from 1-9"
        @@player_choise = gets
        while @@player_choise.length != 4;
            puts 'invalid input insert 4 digits from 1-9:'
            @@player_choise = gets 
            @@player_choise.to_s
        end
    end
    def update_board()
        @@array = @@player_choise.split("")

        @@b1[2] = @@array[0]
        @@b1[6] = @@array[1]
        @@b1[10] = @@array[2]
        @@b1[14] = @@array[3]

        print_board()
    end
end

module Computer
    def generate_code()
        @@code = ((rand*10000).floor).to_s
    end
end
class Game< Player
    include Computer
    def start_game()
        print_board()
        generate_code()
        player_input()
        update_board() 
    end
end

player = Game.new()
player.start_game()

#board create and change board anounce current result
#player get and add input to the board
#computer generate a n ai and announce the winner
#game coordinate the game and announce the winner