require 'rails_helper'

RSpec.describe Orderspace, type: :model do
  let!(:user){create(:user)}
  let!(:coworkingspace){create(:coworkingspace)}

 subject{
     build(:orderspace, body:"body", user_id: user.id, coworkingspace_id: coworkingspace.id)
  }

	  context "association" do
    it { should belong_to(:user) }
  end

    context "associationCSpace" do
    it { should belong_to(:coworkingspace) }
  end
end