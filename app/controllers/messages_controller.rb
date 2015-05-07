class MessagesController < ApplicationController

  def create
    message = Message.create( messsage_params )
    redirect_to '/'
  end

  private

  def messsage_params
    params.require(:message).permit(:note)
  end

end
