require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
   let!(:user) { build(:user, email: "test@gmail.com", password: "Password456") }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

describe "GET #index" do
    it 'inddex' do
    expect(response).to have_http_status(200)
  end
end

  describe 'GET #new' do
    it "should find current_user and open form for create message" do
      get :new
      expect(subject.current_user.email).to eq("test@gmail.com")
      expect(subject.current_user.email).to eq(user.email)
      expect(response).to have_http_status(200)
    end
  end

describe 'POST #create' do
    it "should create message and redirect to userparam page" do
      post :create, params: {coworkingfilter: {city: "Sandor", beginDate: "2019-05-03", finishDate: "2019-06-04"}}
      expect(assigns(:coworkingfilter)).to_not eq(nil)
    end
  end

  describe "GET #index" do
    it 'index' do
    expect(response).to have_http_status(200)
  end
end

  describe 'GET #send_no_responder_messages' do
    it "should find current_user and open form for create message" do
      get :send_no_responder_messages
      expect(subject.current_user.email).to eq("test@gmail.com")
      expect(subject.current_user.email).to eq(user.email)
      expect(response).to have_http_status(200)
    end
  end

   describe 'POST #post_no_responder_messages' do
    it "should create message and redirect to messages_path" do
      post :post_no_responder_messages, params: {id: 1, message: {body:"Body", from_user_id:subject.current_user.id, to_user_id:subject.current_user.id}}
      expect(subject.current_user.messages[0].body).to eq("Body")
      expect(response).to redirect_to messages_path
    end
  end
end