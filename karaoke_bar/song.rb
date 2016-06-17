class Song

  attr_reader :title, :artist, :genre

  def initialize(params)
     @title = params[:title]
     @artist = params[:artist]
     @genre = params[:genre]
   end
end