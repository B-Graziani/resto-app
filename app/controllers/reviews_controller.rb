class ReviewsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @review = Review.new
  end
  def create
    @article = Article.find(params[:article_id])
    @review = Review.new(review_params)
    @review.article = @article
    @review.save
    redirect_to @article
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.article
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
