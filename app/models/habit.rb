class Habit < ApplicationRecord
  belongs_to :user
  validates :title, :description, :category, presence: true  
end
