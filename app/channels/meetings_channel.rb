class MeetingsChannel < ApplicationCable::Channel
  def subscribed

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
