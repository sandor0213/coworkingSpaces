class CoworkingfiltersController < ApplicationController
def new
	@coworkingfilter = Coworkingfilter.new
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
end
