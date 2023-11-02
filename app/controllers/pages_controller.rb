class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def gallery
    @contents = Content.all
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
