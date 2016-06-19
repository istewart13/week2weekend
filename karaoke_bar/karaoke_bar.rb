# require_relative 'guest'
# require_relative 'room'
# require_relative 'song'
# require_relative 'viewer'

# class KaraokeBar

#   def initialize(viewer)
#     @viewer = viewer


#     # player_2_name = @viewer.get_player_name(2)

#     # player1 = Player.new(player_1_name)
#     # player2 = Player.new(player_2_name)

#     # players = [player1,player2]
#     # @game = Game.new(players,board)
#     room1 = Room.new(name: "Pop", price: 20, capacity: 4)
#     room2 = Room.new(name: "Rock", price: 25, capacity: 5)

#     guest_first_name = @viewer.get_guest_first_name
#     guest_last_name = @viewer.get_guest_last_name
#     guest_age = @viewer.get_guest_age
#     guest_budget = @viewer.get_guest_budget

#     guest = Guest.new(first_name: guest_first_name, last_name: guest_last_name, age: guest_age, money: guest_budget)



#     song = Song.new(title: "Like A Prayer", artist: "Madonna", genre: "Pop")
#     # another_song = Song.new(title: "Born To Run", artist: "Bruce Springsteen", genre: "Rock")
#   end

#   # def run()
#   #   while(!@game.is_won?)
#   #     @viewer.start(@game.current_player.name)
#   #     @game.next_turn(@dice.roll)
#   #     @viewer.show_update(@game.log.last)
#   #   end

#   #   @viewer.end(@game.winner.name)
#   # end

#   # end

#   # game = SnakeAndLadders.new(Dice.new, Viewer.new)
#   # game.run()
# end