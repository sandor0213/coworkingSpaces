class CommentsController < ApplicationController
def new
		@comment = Comment.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 


	def create
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@comment = @coworkingspace.comments.build(commentparams)
		@comment.user_id = current_user.id
		if @comment.save
			flash[:notice] = "Your comment was successfully created"
		redirect_to space_path(@coworkingspace.id)
		else 
			flash[:error] = "Your comment failed"
		render 'new'
		end	
	end	

	def destroy
		@comment = Comment.find(params[:id])
		 @comment.destroy
    redirect_to space_path(params[:coworkingspace_id])
    end

	private def commentparams 
	params.require(:comment).permit(:coworkingspace_id, :message, :user_id, :image)
	end
end

