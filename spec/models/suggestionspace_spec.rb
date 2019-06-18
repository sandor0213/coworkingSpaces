require 'rails_helper'

RSpec.describe Suggestionspace, type: :model do
 let!(:coworkingspace){create(:coworkingspace)}
 
  subject{
     build(:suggestionspace, coworkingspace_id: coworkingspace.id)
  }

    context "association" do
    it { should belong_to(:suggestionspace) }
  end
end