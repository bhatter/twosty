class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to request_matches_path(@request.id)
    else
      render 'new'
    end
  end

  def edit

  end

  def index
    @requests = Request.where(user: current_user)
  end

  private

  def request_params
    params.require(:request).permit(:location, :meeting_date, :cuisine_id)
  end


end


