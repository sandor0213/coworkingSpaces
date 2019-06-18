require 'rails_helper'

RSpec.describe PagesController, type: :controller do
 describe "GET #index" do
    it 'index' do
    expect(response).to have_http_status(200)
  end
end
end
