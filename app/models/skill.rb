# app/models/skill.rb
class Skill < ApplicationRecord
  validates :name, presence: true
  validates :icon_class, presence: true
  validates :color, presence: true
end