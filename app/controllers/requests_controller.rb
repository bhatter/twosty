class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    # @request.restaurant = Restaurant.where(cuisine_id: @request.cuisine_id).near(@request.location, 25, units: :km).sample
    if @request.save
      redirect_to request_matches_path(@request.id)
    else
      render 'new'
    end
  end

  def update
    @request = Request.find(params[:id])
    @request.update(restaurant_id: params[:restaurant_id])
    redirect_to meetings_path
  end

  def index
    @requests = Request.where(user: current_user)
  end

  private

  def request_params
    params.require(:request).permit(:location, :meeting_date, :cuisine_id)
  end


end


