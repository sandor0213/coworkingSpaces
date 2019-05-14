class CoworkingspacesController < ApplicationController
before_action :authenticate_user!
before_action :find_space, only: [:show]
    
def index
    @coworkingspaces = Coworkingspace.all
end

def new
	@coworkingspace = Coworkingspace.new
end

def create
	@coworkingspace = current_user.coworkingspaces.build(coworkingspacesparams)
		if @coworkingspace.save
			flash[:notice] = "You successfully created coworking space"
			redirect_to coworkingspace_path(@coworkingspace.id)
		else
		flash[:error] = "Failed to create coworking space"	
		render "new"
		end	
end

def filtered_spaces
    	@filter = Coworkingfilter.find(params[:id])
    	if !@filter.city.blank? && !@filter.beginDate.blank? && !@filter.finishDate.blank?
    		@coworkingspaces = Coworkingspace.where(city: @filter.city)
    		array_of_valid_spaces = []
    			 @coworkingspaces.map do |space|
    				space.suggestionspaces.each do |suggestion|
			  if @filter.beginDate >= suggestion.beginDate && @filter.finishDate <= suggestion.finishDate
				 array_of_valid_spaces.push(space)
			      end
				   end
				end
			   @coworkingspaces = array_of_valid_spaces
			    @coworkingspaces.each do |coworkingspace|
		peopleTaken = 0
		coworkingspace.orderspaces.each do |order|
			if 	!(@filter.beginDate > order.finishDate || @filter.finishDate < order.beginDate)
					peopleTaken += order.peopleNumber
			end
		end
	
	peopleAvailable = coworkingspace.peopleNumber - peopleTaken
	
	    if peopleAvailable == 0
		coworkingspace.isbooked = true
		end
	 
	end	
		end
	end

def show 
end		


private def coworkingspacesparams
	params.require(:coworkingspace).permit(:user_id, :image, :price, :area, :description, :city, :address, :hasKitchen, :hasMeetroom, :hasFreeWiFi, :hasFreeCookies, :peopleNumber)
end

 def find_space
    @coworkingspace = Coworkingspace.find(params[:id])
 end	

end
