class MessagesController < ApplicationController
def new
	@message = Message.new
	@user_id = params[:user_id]
end

def create
	@message = current_user.messages.build(messageparams)
	@message.from_user_id = current_user.id
	@message.to_user_id = params[:user_id]
    @to_other_user_message = User.find(params[:user_id]).messages.build(body: params[:body], from_user_id: current_user.id, to_user_id: params[:id])
    @to_other_user_message.save
    if @message.save
    redirect_to messages_path	
end
end

def index
	@messages = current_user.messages.order("id DESC")
end


def destroy
	@message = Message.find(params[:id])
	@message.destroy
	redirect_to messages_path
end	

def send_no_responder_messages
	@message = Message.new
end	

def post_no_responder_messages
	@message = current_user.messages.build(messageparams)
	@message.from_user_id = current_user.id
    if @message.save
    @to_other_user_message = User.find(@message.to_user_id).messages.build(body: @message.body, from_user_id: current_user.id, to_user_id: @message.to_user_id)
    @to_other_user_message.save

    redirect_to messages_path	
end	
end	

private def messageparams 
	params.require(:message).permit(:body, :user_id, :to_user_id, :from_user_id)
	end
end
