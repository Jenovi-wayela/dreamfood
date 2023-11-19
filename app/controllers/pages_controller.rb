class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # before_action :authenticate_user!, only [ :gallery ]

  def gallery
    @contents = Content.all
    @contents = @contents.where(user_id: current_user.id) if current_user&.admin?
  end


  def about
    # Your code for the About page
  end

  def contact
    # Your code for the Contact page
  end

  def home
    # Your code for the Home page
  end

end
