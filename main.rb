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

#Initialize array
#Fill array with initialized Player instances
#Ouput Player instance variables 
players = [];

50.times do |i|

    players << Player.new("Player #{i + 1}", Random.new().rand(0..300));

end

players.each do |player|

    puts "Ready #{player.name}! Score: #{player.score}\n";

end



