# frozen_string_literal: true

class Greeting < ApplicationRecord
  validates :name, presence: true
  validates :message, presence: true
end
