=begins
Name: Curtis Kauer
Exercise 1a: Player class
=end

=begins
Player - player class
attribute1 - name - the name of the instance
attribute2 - score - the score of the instance
=end
class Player

    attr_accessor :name
    attr_accessor :score

    #initializePlayer - initializes the member attributes of a Player instance
    #param1 - name - the name of the player 
    #param2 - score - the score of the player
    #return - nothing
    def initializePlayer(name, score)

        @name = name;
        @score = score;

    end

end

=begins
generatePlayerName - returns a generic player name with the format 'Player #'
param1 - number - the #
return - a string literal of the player name 
=end
def generatePlayerName(number)

    return "Player #{number}";

end

=begins
generateRandomScore - returns a random integer between 10 and 300
return - returns a random integer between 10 and 300
=end
def generateRandomScore()

    return Random.new().rand(10..300);

end

=begins
outputPlayer - displays the attributes in a given player instance 
param1 - player - the player whose attributes to display
return - nothing
=end
def outputPlayer(player)

    puts "Ready #{player.name}! Score: #{player.score}\n";

end


numberOfPlayers = 50;

players = [numberOfPlayers];

counter = 0;

#creates new player instance
#initializes the player instance
#pushes instance of player in array (numberOfPlayers)
#outputs the player
while counter < numberOfPlayers

    player = Player.new();
    player.initializePlayer(generatePlayerName(counter + 1), generateRandomScore());

    players.push(player);

    outputPlayer(player);

    counter += 1;
end   



