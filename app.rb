class Board
    @@correct_order = 0
    @@correct_guss = 0
    "blue"
    @@b1 = "|    |    |    |    |"
    def print_board()
        puts @@b1
        puts "correct order: #{@@correct_order} | correct possition: #{@@correct_guss}"
    end
end

class Player
    @@player_choise = ''
    def player_input()
        puts "insert a 4 digit number from 1-9"
        @@player_choise = gets
        while player_choise.length != 4;
            puts 'invalid input insert 4 digits from 1-9:'
            @@player_choise = gets 
        end
    end
end

class Game< Player
    def start_game()

    end
end

player = Board.new()
player.print_board()
player.player_input()

#board create and change board anounce current result
#player get and add input to the board
#computer generate a n ai and announce the winner