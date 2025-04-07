class Avo::Resources::Skill < Avo::BaseResource
  self.title = :name
  
  def fields
    field :id, as: :id, hide_on: [:index, :show]
    field :name, as: :text
    field :icon_class, as: :text, help: "Font Awesome or Devicon class (e.g., 'devicon-ruby-plain')"
    field :color, as: :text, help: "Tailwind color class or hex code (e.g., 'text-red-500')"
  end
end