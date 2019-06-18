require 'rails_helper'

RSpec.describe "pages/index", type: :view do

it "should show a link to Find coworking space?" do
    render
    expect(rendered).to include '<a href="/filters/new">Find coworking space?</a><br>'
  end

  it "should show a link to Suggest coworking space" do
    render
    expect(rendered).to include '<a href="/spaces/new">Suggest coworking space?</a>'
  end
end
