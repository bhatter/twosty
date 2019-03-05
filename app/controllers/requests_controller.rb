class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to edit_request_path(@request)
    else
      p @request.errors.messages
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])

  end

  private

  def request_params
    params.require(:request).permit(:price, :meal_time, :location, :meeting_date)
  end
end
