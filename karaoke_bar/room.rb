class Room
  attr_reader :name, :price, :songs, :guests, :capacity

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @capacity = params[:capacity]
     @songs = []
     @guests = []
   end

   def add_song(song)
    @songs << song
   end

   def check_in(guest)
    @guests << guest
   end

   def search_for_guest(guest)
    @guests.include?(guest)
   end

   def check_out(guest)
    @guests.delete(guest)
   end


end