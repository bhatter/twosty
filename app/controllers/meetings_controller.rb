class MeetingsController < ApplicationController
  def show
    @meeting = Meeting.find(params[:id])
    @message = Message.new
    @request = @meeting.requests.where.not(restaurant_id: nil).first
    @restaurant = @request.restaurant
    @markers = [
      { lat: @restaurant.latitude,
        lng: @restaurant.longitude,
     image_url: helpers.asset_url('map_marker.svg'),
    }]
  end

  def index
    meetings = current_user.meetings
    @future_requests = current_user.requests
                                   .where("meeting_date >= '#{Date.current}'")
                                   .includes(:restaurant)
    @past_meetings = meetings.where("meeting_date < '#{Date.current}'")
    @future_meetings = meetings.where("meeting_date >= '#{Date.current}'")
    # @meetings = Meeting.joins(:chooser_request, :chosen_request).where(requests: { user_id: current_user.id })
  end

  def create
    @request = Request.find(params[:request_id])
    @matched_request = Request.find(params[:matched_request_id])
    @meeting = Meeting.new
    if @meeting.save
      @request.update(meeting: @meeting)
      @matched_request.update(meeting: @meeting)
      redirect_to meeting_path(@meeting)
    end
  end
end
