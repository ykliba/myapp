class ReviewsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]
  before_action :move_to_index, except: [:index]
  
  def index
    @reviews = Review.all
  end
  
  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
  end

  private
  def review_params
    params.require(:review).permit(:title, :artist, :content, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
