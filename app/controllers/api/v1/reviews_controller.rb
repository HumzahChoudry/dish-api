class Api::V1::ReviewsController < ApplicationController


  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: 200
    else
      render :json => { :errors => @review.errors.full_messages }, :status => 422
    end
  end

  private
  def review_params
    params.permit(:content, :restaurant_id, :user_id, :ambience_rating, :hospitality_rating)
  end
end
