class Avo::Resources::Project < Avo::BaseResource
  self.title = :title
  
  def fields
    field :id, as: :id, hide_on: [:index, :show]
    field :title, as: :text
    field :description, as: :textarea
    field :github_url, as: :text
    field :live_url, as: :text
    field :image, as: :file, is_image: true
  end
end