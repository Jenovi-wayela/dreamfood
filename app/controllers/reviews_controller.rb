class ReviewsController < ApplicationController
  before_action :set_content

  def create
    @review = @content.reviews.new(review_params.merge(user: current_user))
    if @review.save
      redirect_to @content, notice: 'Review was successfully created.'
    else
      render 'contents/home'
    end
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
