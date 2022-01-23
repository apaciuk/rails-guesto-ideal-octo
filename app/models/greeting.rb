class Greeting < ApplicationRecord 
    validates :title, presence: true
    validates :message, presence: true
end
