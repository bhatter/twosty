class CuisinesController < ApplicationController
    def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    @cuisine.save
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:name)
  end
end
