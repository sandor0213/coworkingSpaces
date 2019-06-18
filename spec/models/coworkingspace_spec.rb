require 'rails_helper'

RSpec.describe Coworkingspace, type: :model do
	 let!(:user) { create(:user, email: "sandorff@gmail.com", password: "Password456") }
 
  subject{
     build(:coworkingspace, city: "city", address: "address", area: 50, description: "description", price: 120, people_number: 100, user_id: user.id, image:Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/my_image.jpg')), 'image/jpeg'))
  }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

 it "should not be valid without address" do
       subject.address = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:address) }
  end

    context "association" do
    it { should belong_to( :user) }
  end

  describe "associations2" do
    it { should have_many( :suggestionspaces) }
  end

    describe "associations3" do
    it { should have_many( :orderspaces) }
  end

    describe "associations4" do
    it { should have_many( :comments) }
  end

end