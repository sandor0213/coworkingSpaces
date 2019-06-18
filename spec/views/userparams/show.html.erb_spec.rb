require 'rails_helper'

RSpec.describe "userparams/show", type: :view do





# before :each do
    # @user = assign(:user, User.create!(email: "sandorff@gmail.com", password: "Password456"))
 # login_user
 let!(:user) { build(:user, email: "test@gmail.com", password: "Password456") }

 let!(:userparam) { build(:userparam, firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", avatar:Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/my_image.jpg')), 'image/jpeg'), user_id: user.id)}
#   }
    # @userparam = assign(:userparam, Userparam.create!(firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", user: @user))
  # end




it "should show a first userparam firstname" do
    render
    expect(@userparam.firstname).to eq('Sandor')
    expect(rendered).to include 'Sandor'
  end

end


 


# <div class="container-fluid">
# 	<div class="profile">
# 		<div class="row">
			
# 			<div class="col-4">
# 			 <%= image_tag @userparam.avatar.url, size: "300x300" %>
# 			</div>
# 			<div class="col-8">
# 				<div class="user-info">
# 					<h3>User Information</h3>
#  		 <p>Firsname: <i> <%= @userparam.firstname %></i><br /> </p> 
#   		 <p>Lastname: <i><%= @userparam.lastname %></i><br /></p> 
#   		 <p>Age: <i><%= @userparam.age %></i><br /></p> 
#   	 	 <p>Hometown: <i><%= @userparam.hometown %></i><br /></p> 
#  		 <p>Occupation: <i><%= @userparam.occupation %></i><br /></p> 
#                 </div>
#   	<%= link_to "Edit profile", edit_userparam_path(@userparam.id) %>
#   			</div>
#   		</div>
#   	</div>
#  </div>



#   build(:userparam, firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", user_id: user.id)
#   }


# before :each do
#     @category = assign(:category, Category.create!(title: "bi", image: Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image.jpg'), 'image/jpeg')))


#     @catalogs = assign(:catalog, [Catalog.create!(title: "yo", location: "nooooo", phone_number: 88005553535,description: "tyt chot e", address: "Kiev", photos:[Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image.jpg'), 'image/jpeg'),
#                                                                                                                                                                  Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image2.jpg'), 'image/jpeg')], category: @category),
#                                  Catalog.create!(title: "yo1", location: "nooooo", phone_number: 88005553535,description: "tyt chot e", address: "Kiev", photos:[Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image.jpg'), 'image/jpeg'),
#                                                                                                                                                                  Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image2.jpg'), 'image/jpeg')], category: @category)])
#   end