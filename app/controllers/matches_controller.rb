class MatchesController < ApplicationController
  def index
    @request = Request.find(params[:request_id])
    @matching_requests = match_requests(@request)
    @restaurants = Restaurant.where(cuisine_id: @request.cuisine_id)
  end

  def edit
    @restaurants = Restaurant.where(cuisine_id: @request.cuisine_id)
    @request = Request.find(params[:request_id])
  end

  private

  def match_requests(request)
    requests = Request.where(location: request.location, meeting_date: request.meeting_date, cuisine: request.cuisine, meeting_id: nil).where.not(user: current_user).
      where.not(restaurant: [nil, ""])
    requests.joins(:user)
            .where(users: { gender: current_user.preferred_gender, gender_preference: current_user.gender_to_preferred })
            .where(users: { date_of_birth: current_user.birth_date_preference_to..current_user.birth_date_preference_from})
            .where('"users"."age_preference_to" >= ? AND "users"."age_preference_from" <= ?', current_user.age, current_user.age)
  end
end
