require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let!(:user) { build(:user, email: "test@gmail.com", password: "Password456") }
  let!(:coworkingspace) { build(:coworkingspace, city: "city", address: "address", area: 50, description: "description", price: 120, people_number: 100, user_id: user.id, image:Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/my_image.jpg')), 'image/jpeg')) }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

end