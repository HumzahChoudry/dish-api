class Api::V1::RestaurantsController < ApplicationController


  def query_restaurants
    puts params[:slug]
    search_term = "%#{params[:slug]}%"
    records_array = Restaurant.where("name ILIKE ?", search_term)
    render json: records_array, include: :food_items
  end
end
