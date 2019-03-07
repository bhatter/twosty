class MeetingsController < ApplicationController
  def show
    @meeting = Meeting.find(params[:id])
    @message = Message.new
    @request = Request.find(@meeting.chooser_request_id)
    @restaurant = @request.restaurant
    @markers = [
      { lat: @restaurant.latitude,
       lng: @restaurant.longitude }
     ]
  end

  def create
    @meeting = Meeting.new
    @meeting.chooser_request_id = params[:chooser_request_id]
    @meeting.chosen_request_id = params[:chosen_request_id]
    if @meeting.save
      redirect_to meeting_path(@meeting)
    end
  end
end
