class ReviewsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @review = Review.new
  end
end
