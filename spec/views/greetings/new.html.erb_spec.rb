# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'greetings/new', type: :view do
  before(:each) do
    assign(:greeting, Greeting.new(
                        name: 'MyString',
                        message: 'MyText'
                      ))
  end

  it 'renders new greeting form' do
    render

    assert_select 'form[action=?][method=?]', greetings_path, 'post' do
      assert_select 'input[name=?]', 'greeting[name]'

      assert_select 'textarea[name=?]', 'greeting[message]'
    end
  end
end
