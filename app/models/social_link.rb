# app/models/social_link.rb
class SocialLink < ApplicationRecord
  validates :name, :url, :icon_class, presence: true
end