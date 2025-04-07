class Avo::Resources::SocialLink < Avo::BaseResource
  self.title = :name
  
  def fields
    field :id, as: :id, hide_on: [:index, :show]
    field :name, as: :text
    field :url, as: :text
    field :icon_class, as: :text, help: "Font Awesome icon class (e.g., 'fab fa-github')"
  end
end