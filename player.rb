class Player
    attr_accessor :total, :name
    # store player's running total - maybe keep in Game class

    def initialize
        @name = name
    end

    def get_user_name
        puts "Please enter your name"
        @name = gets.chomp
    end


    def ask_for_coordinates
        loop do
            puts "Enter your move coordinates"
            puts "e.g. a = left, d = right, s = down, q = quit"
            input = gets.chomp
            # if input != "q"
            # validate_coordinates(input)
            return input if validate_coordinates(input)
        end
    end

    def validate_coordinates(input)
        valid_input = ["a", "d", "s", "q"]
        input.length == 1 && (valid_input.include? input) ? true : (puts "Invalid input")
    end
end
