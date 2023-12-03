# app/controllers/contents_controller.rb
class ContentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_admin, only: [:new, :create, :destroy]

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)

    if @content.save
      redirect_to @content, notice: 'Added to gallery'
    else
      render 'new'
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path, notice: 'Removed from gallery'
  end

  private

  def content_params
    params.require(:content).permit(:media)
  end

  def authorize_admin
    redirect_to root_path, alert: 'You are not authorized to perform this action.' unless current_user.admin?
  end
end




