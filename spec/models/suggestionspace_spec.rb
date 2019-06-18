require 'rails_helper'

RSpec.describe Suggestionspace, type: :model do
  let!(:user) { create(:user, email: "sandorff@gmail.com", password: "Password456") }
  let!(:coworkingspace){create(:coworkingspace, city: "city", address: "address", area: 50, description: "description", price: 120, people_number: 100, user: user, user_id: user.id, image:Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/my_image.jpg')), 'image/jpeg'))}
 
  subject{
     build(:suggestionspace, coworkingspace_id: coworkingspace.id)
  }

    context "association" do
    it { should belong_to(:suggestionspace) }
  end
end