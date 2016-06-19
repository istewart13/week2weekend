class Guest

  attr_reader :first_name, :last_name, :age, :favourite_song
  attr_accessor :money
  
  def initialize(params)
     @first_name = params[:first_name]
     @last_name = params[:last_name]
     @age = params[:age]
     @money = params[:money]
     @favourite_song = params[:favourite_song]
   end
end