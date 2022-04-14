class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.adoption = Adoption.find(params[:adoption_id])
    @review.save
    redirect_to tree_path(@review.tree)
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
