=begin
Name: Curtis Kauer
Exercise 1a: Player class and Player instance array
=end

=begin
Player - player class
attribute1 - name - the name of the Player instance
attribute2 - score - the score of the Player instance
=end

class Player

    attr_reader :name
    attr_reader :score

    #initialize - constructor - initializes the member variables of a Player instance
    #param1 - name - the name of the player 
    #param2 - score - the score of the player
    #return - nothing
    def initialize(name, score)

        @name = name;
        @score = score;

    end

end

=begin
generatePlayerName - returns a generic player name with the format 'Player #'
param1 - number - the #
return - a string literal of the player name 
=end

def generatePlayerName(number)

    return "Player #{number}";

end

=begin
generateRandomScore - returns a random integer between 10 and 300
return - returns a random integer between 10 and 300
=end

def generateRandomScore()

    return Random.new().rand(10..300);

end

#Initialize array
#Fill array with initialized Player instances
#Ouput Player instance variables 
players = [];

50.times do |i|

    players << Player.new(generatePlayerName(i + 1), generateRandomScore);

end

players.each do |player|

    puts "Ready #{player.name}! Score: #{player.score}\n";

end



