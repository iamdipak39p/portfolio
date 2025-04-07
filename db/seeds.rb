# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Create profile
profile = Profile.find_or_create_by(name: "Rutuja") do |p|
  p.title = "Senior iOS Developer"
  p.cv_path = "/cv.pdf"
  # You'll need to attach an avatar separately
end

# Create skills
skills_data = [
  { name: "Ruby", icon_class: "devicon-ruby-plain", color: "text-red-500" },
  { name: "Rails", icon_class: "devicon-rails-plain", color: "text-red-600" },
  { name: "JavaScript", icon_class: "fab fa-js", color: "text-yellow-500" },
  { name: "React", icon_class: "fab fa-react", color: "text-blue-400" }
]

skills_data.each do |skill_data|
  Skill.find_or_create_by(name: skill_data[:name]) do |s|
    s.icon_class = skill_data[:icon_class]
    s.color = skill_data[:color]
  end
end

# Create projects
projects_data = [
  { 
    title: "E-Commerce Platform", 
    description: "Full-stack Rails application with Stripe integration and responsive design.",
    github_url: "#",
    live_url: "#"
  },
  { 
    title: "Task Management App", 
    description: "Agile project management tool with real-time collaboration features.",
    github_url: "#",
    live_url: "#"
  }
]

projects_data.each do |project_data|
  Project.find_or_create_by(title: project_data[:title]) do |p|
    p.description = project_data[:description]
    p.github_url = project_data[:github_url]
    p.live_url = project_data[:live_url]
    # You'll need to attach images separately
  end
end

# Create social links
social_links_data = [
  { name: "GitHub", url: "#", icon_class: "fab fa-github" },
  { name: "LinkedIn", url: "#", icon_class: "fab fa-linkedin" },
  { name: "Twitter", url: "#", icon_class: "fab fa-twitter" }
]

social_links_data.each do |link_data|
  SocialLink.find_or_create_by(name: link_data[:name]) do |sl|
    sl.url = link_data[:url]
    sl.icon_class = link_data[:icon_class]
  end
end