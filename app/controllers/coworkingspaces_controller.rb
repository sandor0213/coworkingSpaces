class CoworkingspacesController < ApplicationController
before_action :authenticate_user!

def new
	@coworkingspace = Coworkingspace.new
end

end
