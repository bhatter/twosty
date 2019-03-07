class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @meeting = Meeting.find(params[:meeting_id])
    @message.user = current_user
    @message.meeting = @meeting
    if @message.save
      redirect_to meeting_path(params[:meeting_id])
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
