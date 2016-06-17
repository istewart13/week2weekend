class Room
  attr_reader :name, :price, :songs

  def initialize(params)
     @name = params[:name]
     @price = params[:price]
     @songs = []
   end
end