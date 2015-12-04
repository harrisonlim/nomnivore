class PlacesController < ApplicationController
	def index
		@places = Place.all.paginate(:page => params[:page], :per_page => 3)

	end

	def new
		@places = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end

	def place_params
		#placed :address before :description, try switching if it throws out an error
		params.require(:place).permit(:name, :address, :description)
	end

end