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
    @songs << song
    set_initial_song() if @songs.length == 1
    return song
   end

   def set_initial_song()
    #update this to update song and use conditional
    @current_song = @songs[0]
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

   def next_song()
    @current_song = @songs.rotate![0]
   end


end