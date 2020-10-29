class MessagesController < ApplicationController
  before_action :set_message, only: :destroy
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create(message_params)
  end

  def destroy
    @message.destroy
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
