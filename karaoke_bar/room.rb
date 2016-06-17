class Room
  attr_reader :name, :price, :songs, :guests, :capacity, :current_song

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @capacity = params[:capacity]
     @songs = []
     @guests = []
     @current_song = @songs[0]
   end

   def add_song(song)
    if @songs.length == 0
      @songs << song
      @current_song = song
      return song
    elsif @songs.length > 50
      return "Sorry, your playlist is full"
    end
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