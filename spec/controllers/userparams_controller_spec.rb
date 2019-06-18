require 'rails_helper'

RSpec.describe UserparamsController, type: :controller do
  let!(:user) { build(:user, email: "test@gmail.com", password: "Password456") }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

  describe 'GET #new' do
    it "should find current_user and open form for create userparam" do
      get :new
      expect(subject.current_user.email).to eq("test@gmail.com")
      expect(subject.current_user.email).to eq(user.email)
      expect(response).to have_http_status(200)
    end
  end


  describe 'POST #create' do
    it "should create userparam and redirect to userparam page" do
      post :create, params: {userparam: {firstname: "Sandor", lastname: "Baloh", age: 24, hometown: "hometown", occupation: "occupation", user_id: subject.current_user.id}}
      expect(subject.current_user.userparam.firstname).to eq("Sandor")
      expect(response).to redirect_to userparam_path(subject.current_user.id)
    end
  end

  describe 'GET #edit' do
    it "should find current_user and open form for update userparam" do
      get :new
      expect(subject.current_user.email).to eq("test@gmail.com")
      expect(subject.current_user.email).to eq(user.email)
      expect(response).to have_http_status(200)
    end
  end

describe "GET #show" do
    it 'show' do
    expect(response).to have_http_status(200)
  end
end
end