module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryBot.create(:admin) # Using factory bot as an example
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.create(:user, email: "test@gmail.com", password: "Password456")
      sign_in user
    end
  end
end


# module ControllerMacros
#   def login_user
#     @request.env["devise.mapping"] = Devise.mappings[:user]
#     user = FactoryGirl.create(:user)
#     sign_in user
#   end
# end