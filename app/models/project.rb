# app/models/project.rb
class Project < ApplicationRecord
  has_one_attached :image
  validates :title, :description, presence: true
end
