class CitiesController < ApplicationController

before_action :authenticate_analyst!

	def new
		@city = City.new
	end

	def index
		@cities = City.all
	end

	def create 
		@city = City.new(city_params)
		if @city.save
			flash[:success] = "ciudad creada"
			redirect_to cities_path
		else
			flash[:notice] = "hubo errores #{@city.errors.full_messages.join(',')}"
			render "new"
		end
	end

	private

	def city_params
		params.require(:city).permit(:name_city)
	end
end
