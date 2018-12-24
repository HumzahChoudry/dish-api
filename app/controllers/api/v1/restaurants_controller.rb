class Api::V1::RestaurantsController < ApplicationController

  def test
    byebug
  end
  def query_restaurants
    restaurants_hopefully = Restaurant.get_auto_complete_responses(params[:slug])
    puts restaurants_hopefully
    render json: restaurants_hopefully
  end
end
