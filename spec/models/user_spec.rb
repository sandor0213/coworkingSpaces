require 'rails_helper'

RSpec.describe User, type: :model do
  subject{
  	build(:user)
  }

  describe "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end

   describe "associations" do
    it { should have_one(:userparam).dependent(:destroy) }
  end

  describe "associations1" do
    it { should have_many(:coworkingspaces) }
  end

    describe "associations2" do
    it { should have_many(:orderspaces) }
  end

    describe "associations3" do
    it { should have_many(:comments) }
  end

    describe "associations4" do
    it { should have_many(:messages) }
  end


end
