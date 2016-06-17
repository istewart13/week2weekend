class Room
  attr_reader :name, :price, :songs, :guests

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @songs = []
     @guests = []
   end
end