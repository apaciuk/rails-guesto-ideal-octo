# frozen_string_literal: true

FactoryBot.define do
  factory :greeting do
    name { 'MyString' }
    message { 'MyText' }
  end
end
