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
    @matching_requests = match_requests(@request)
  end

  private

  def request_params
    params.require(:request).permit(:price, :meal_time, :location, :meeting_date)
  end

  def match_requests(request)
    requests = Request.where(location: request.location, meeting_date: request.meeting_date, cuisine: request.cuisine).where.not(user: current_user)
    requests.joins(:user)
            .where(users: { gender: current_user.preferred_gender, gender_preference: current_user.gender_to_preferred })
            .where(users: { date_of_birth: current_user.birth_date_preference_to..current_user.birth_date_preference_from})
            .where('"users"."age_preference_to" >= ? AND "users"."age_preference_from" <= ?', current_user.age, current_user.age)
  end
end


