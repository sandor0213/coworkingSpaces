class OrderspacesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_order, only: [:show, :edit, :update, :destroy]
$coworkingspace = nil
			
	def index
			@orderspaces = Orderspace.all
			 # binding.pry
	end	

	def new
			$coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
				
		@orderspace = Orderspace.new
	
		# params[:order_space][:coworkingspace_id] = @coworkingspace.id
		# @orderspace.coworkingspace_id = @coworkingspace.id
		# @orderspace.coworkingspace_id = Coworkingspace.find(params[:coworkingspace_id])
	end

	def create
    params[:orderspace][:user_id] = current_user.id
    params[:orderspace][:coworkingspace_id] = $coworkingspace.id
    @orderspace = Orderspace.new(orderspaceparams)
		# @orderspace = current_user.orderspaces.build(orderspaceparams)
		# binding.pry
		# @orderspace.coworkingspace_id = $coworkingspace.id

		# @orderspace.coworkingspace_id = Coworkingspace.find(params[:coworkingspace_id])
		if @orderspace.save
		redirect_to orderspace_path(@orderspace.id)
		else
		render 'new'
		end	
	end

	def show

	end	

	def edit

	end	

	def update
		 if @orderspace.update(orderspaceparams)
		 	 flash[:notice] = "Booking successfully updated"

      redirect_to orderspace_path(@orderspace.id)
  else
  	flash[:error] = "Booking of coworking space could not be updated"
  	render 'edit'
  end
	end	

	def destroy
		    @orderspace.destroy
    redirect_to orderspaces_path
	end	


	private def orderspaceparams
		params.require(:orderspace).permit(:user_id, :coworkingspace_id, :peopleNumber, :beginDate, :finishDate)
	end	

	def find_order
    	@orderspace = Orderspace.find(params[:id])
    end	
end
