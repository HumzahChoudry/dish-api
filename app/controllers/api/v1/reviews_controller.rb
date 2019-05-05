class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews, status: 200
  end

  def show
    @review = Review.find(params[:id])
    render json: @review, :include => [:restaurant, :user] , status: 200
  end

  def create
    byebug
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: 200
    else
      render :json => { :errors => @review.errors.full_messages }, :status => 422
    end
  end

  private
  def review_params
    params.permit(:content, :restaurant_id, :user_id, :ambience_rating, :hospitality_rating, :review_items)
  end
end
