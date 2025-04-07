class Avo::Resources::Profile < Avo::BaseResource
  self.title = :name
  
  def fields
    field :id, as: :id, hide_on: [:index, :show]
    field :name, as: :text
    field :title, as: :text
    field :cv_path, as: :text, help: "Path to your CV file (e.g., '/cv.pdf')"
    field :avatar, as: :file, is_image: true
  end
end