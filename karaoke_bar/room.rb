class Room
  attr_reader :name, :price, :songs, :guests, :capacity, :current_song, :current_guest_nums

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @capacity = params[:capacity]
     @current_guest_nums = 0
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
    @current_song = @songs[0]
   end

   def check_in(guest)
    if @current_guest_nums <= @capacity
      @guests << guest
      @current_guest_nums += 1
      return @guests.last
    else
      return "We're over capacity, you can't come in"
    end
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

   def remove_song(song)
    next_song() if @current_song == song
    @songs.delete(song)
   end

   def choose_song(song)
    if @songs.include?(song)
      @current_song = song
    else
    "Sorry, we don't have that song"
    end
   end

   # def no_spare_capacity()

   # end

end