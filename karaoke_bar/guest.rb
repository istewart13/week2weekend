class Guest

  attr_reader :first_name
  
  def initialize(params)
     @first_name = params[:first_name]
   end
end