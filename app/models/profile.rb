
# app/models/profile.rb
class Profile < ApplicationRecord
  has_one_attached :avatar
  validates :name, :title, presence: true
end