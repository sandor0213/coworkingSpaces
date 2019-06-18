require 'rails_helper'

RSpec.describe Userparam, type: :model do
	# let!(:user){create(:user)}
	 let!(:user) { create(:user, email: "sandorff@gmail.com", password: "Password456") }
 
  subject{
     build(:userparam, firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", user_id: user.id)
  }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

 it "should not be valid without firstname" do
       subject.firstname = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:firstname) }
  end

    context "association" do
    it { should belong_to(:user) }
  end

end
