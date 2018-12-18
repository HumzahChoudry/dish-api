class Api::V1::RestaurantsController < ApplicationController

  def query_restaurants
    restaurants_hopefully = Restaurant.get_restaurants_from_text(params[:slug])
    puts restaurants_hopefully
    render json: restaurants_hopefully
  end
end
