class FiltersController < ApplicationController
	def new
	@coworkingfilter = Coworkingfilter.new
		respond_to do |format|
       format.js
   end
end	

def create
	@coworkingfilter = Coworkingfilter.new(coworkingfilterparams)
	if @coworkingfilter.save
	redirect_to filtered_spaces_path(id: @coworkingfilter.id)
     else
     	render 'new'
	end


end
private def coworkingfilterparams
	params.require(:coworkingfilter).permit(:city, :beginDate, :finishDate)
	end

end
