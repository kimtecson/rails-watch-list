class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @list = List.find(params[:list_id])
  end
  def create
    @review = Review.new(bookmark_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private
  def bookmark_params
    params.require(:review).permit(:rating, :comment)
  end
end
