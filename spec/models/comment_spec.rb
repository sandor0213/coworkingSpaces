require 'rails_helper'

RSpec.describe Comment, type: :model do
   let!(:user) { create(:user, email: "sandorff@gmail.com", password: "Password456") }
  let!(:coworkingspace){create(:coworkingspace, city: "city", address: "address", area: 50, description: "description", price: 120, people_number: 100, user_id: user.id, image:Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/my_image.jpg')), 'image/jpeg'))}
 
  subject{
     build(:comment, message: "comment message", user_id: user.id, coworkingspace_id: coworkingspace.id)
  }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

 it "should not be valid without message" do
       subject.message = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:message) }
  end

    context "association" do
    it { should belong_to(:user) }
  end

    context "associationCSpace" do
    it { should belong_to(:coworkingspace) }
  end


end
