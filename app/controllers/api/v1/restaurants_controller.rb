class Api::V1::RestaurantsController < ApplicationController


  def query_restaurants
    puts params[:slug]
    search_term = "%#{params[:slug]}%"
    # sql = "Select * from restaurants WHERE name LIKE '%#{params[:slug]}%'"
    # records_array = ActiveRecord::Base.connection.execute(sql)
    records_array = Restaurant.where("name ILIKE ?", search_term)
    puts records_array
    render json: records_array
  end
end
