class Room
  attr_reader :name, :price, :songs, :guests

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @songs = []
     @guests = []
   end

   def add_song(song)
    @songs << song
   end

   def check_in(guest)
    @guests << guest
   end
end