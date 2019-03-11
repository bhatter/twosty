class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @meeting = Meeting.find(params[:meeting_id])
    @message.user = current_user
    @message.meeting = @meeting
    if @message.save
      respond_to do |format|
        format.html { redirect_to meeting_path(@meeting) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'meetings/show' }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
