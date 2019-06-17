class CommentsController < ApplicationController
def new
		@comment = Comment.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 

	def create
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@comment = @coworkingspace.comments.build(commentparams)
		@comment.user_id = current_user.id
		@comment.created_datetime = DateTime.now
		if @comment.save
			flash[:notice] = "Your comment was successfully created"
		redirect_to coworkingspace_path(@coworkingspace.id)
		else 
			flash[:error] = "Your comment failed"
		render 'new'
		end	
	end	

	def destroy
		@comment = Comment.find(params[:id])
		 @comment.destroy
    redirect_to coworkingspace_path(params[:coworkingspace_id])
    end

	private def commentparams 
	params.require(:comment).permit(:coworkingspace_id, :message, :user_id, :image, :created_datetime)
	end
end

