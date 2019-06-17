class SuggestionsController < ApplicationController
def new
		@suggestionspace = Suggestionspace.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 

	def create
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@suggestionspace = @coworkingspace.suggestionspaces.build(suggestionspaceparams)
		if @suggestionspace.save
		redirect_to space_path(@coworkingspace.id)
		else 
		render 'new'
		end	
	end	

	private def suggestionspaceparams 
	params.require(:suggestionspace).permit(:coworkingspace_id, :beginDate, :finishDate)
	end
end

