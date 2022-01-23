# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'greetings/index', type: :view do
  before(:each) do
    assign(:greetings, [
             Greeting.create!(
               name: 'Name',
               message: 'MyText'
             ),
             Greeting.create!(
               name: 'Name',
               message: 'MyText'
             )
           ])
  end

  it 'renders a list of greetings' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
