class MessagesController < ApplicationController
  before_action :set_message, only: [:edit,:update,:destroy]
  def index
    @messages = Message.all.order(:id)
  end

  def new
  end

  def create
    @message = Message.create(message_params)
  end

  def edit
  end

  def update
    @message.update(message_params)
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
