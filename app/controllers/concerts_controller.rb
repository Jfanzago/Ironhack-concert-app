class ConcertsController < ApplicationController
  def index
  	@concert = Concert.all
  end

  def show
  	@concert
  end

  def create
  		@concert = Concert.new concert_params
  		if @concert.save
  			redirect_to concerts_path(@concert)
  		else 
  			render 'new'
 	end
  end

  def new
  		@concert = Concert.new

  end

  private
  def concert_params
 	 params.require(:concert).permit(:date, :name, :price, :venue, :city, :description)
  end

end


