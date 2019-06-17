require 'rails_helper'

RSpec.describe Userparam, type: :model do
	let!(:user){create(:user)}
 
  subject{
     build(:userparam, firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", user_id: user.id)
  }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
end

    context "association" do
    it { should belong_to(:user) }
  end

end
