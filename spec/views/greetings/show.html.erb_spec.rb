require 'rails_helper'

RSpec.describe "greetings/show", type: :view do
  before(:each) do
    @greeting = assign(:greeting, Greeting.create!(
      name: "Name",
      message: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
