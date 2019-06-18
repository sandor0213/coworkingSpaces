require 'rails_helper'

RSpec.describe Message, type: :model do
   let!(:user) { create(:user, email: "sandorff@gmail.com", password: "Password456") }

  subject{
     build(:message, body:"body", from_user_id: user.id, to_user_id: user.id, user_id: user.id)
  }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    
    it "should not be valid without body" do
       subject.body = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:body) }
  end

   context "association" do
    it { should belong_to(:user) }
  end

end