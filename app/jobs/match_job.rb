class MatchJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @users = User.all
    @users = @users.where('city ILIKE ?', params[:city]) if params[:city].present?
    # @users = @users.where('cuisine ILIKE ?', params[:cuisine]) if params[:cuisine].present?
    @users = @users.where('meeting_date ?', params[:meeting_date]) if params[:meeting_date].present?
    @users = @users.where('@users.age >= current_user.age_preference_from && @users.age <= current_user.age_preference_to')
    @users = @users.where('current_user.age >= @users.age_preference_from && current_user.age <= @users.age_preference_to')
    @users = @users.where('current_user.gender == @users.gender_preference')
    @users = @users.where('current_user.gender_preference == @users.gender')
  end
end
