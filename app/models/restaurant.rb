require 'net/http'
# require 'open-uri'
require "uri"
require 'json'
require 'rest-client'

class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :food_items
  has_many :restaurant_tags
  has_many :tags, through: :restaurant_tags

  def self.get_restaurants_from_text(search_query)
    url = "hi"

    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    result = JSON.parse(response.body)
    puts result
    result
  end

  def self.get_auto_complete_responses_from_yelp(search_query)

     url = "https://api.yelp.com/v3/businesses/search?term=#{search_query}&catagories=food&latitude=#{40.705280}&longitude=#{-74.014260}"
    response = RestClient.get(url, headers={"Authorization": "Bearer #{ENV["YELP_API"]}"})
    response.body
    result = JSON.parse(response.body)
    puts result
    result
  end
end
