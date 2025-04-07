class PortfolioController < ApplicationController
  def index
    @profile = Profile.first_or_initialize(name: "Rutuja", title: "Senior iOS Developer")
    @skills = Skill.all
    @projects = Project.all
    @social_links = SocialLink.all
  end

  def contact
    # Basic form handling
    name = params[:name]
    email = params[:email]
    message = params[:message]
    
    # Send email (you'll need to set up ActionMailer)
    # ContactMailer.contact_message(name, email, message).deliver_now
    
    # For now, just redirect with a flash message
    flash[:notice] = "Thanks for your message! I'll get back to you soon."
    redirect_to portfolio_path
  end
end
