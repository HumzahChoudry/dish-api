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
    url = 

    uri = URI.parse(url)
    byebug
    response = Net::HTTP.get_response(uri)
    response.body
    result = JSON.parse(response.body)
    puts result
    result
  end

  def self.get_auto_complete_responses(search_query)
    #region
    #url = "https://maps.googleapis.com/maps/api/place/autocomplete/json?parameters&input=#{search_query}&key=#{ENV['GOOGLE_PLACES_API']}"
    #url = "https://api.yelp.com/v3/businesses/search"
    # uri = URI.parse(url)
    # http = Net::HTTPS.new(uri.host, uri.port)
    #
    # request = Net::HTTP::Get.new(uri.request_uri)
    # request["Authorization"] = "Bearer #{ENV["YELP_API"]}"
    # request["Accept"] = "*/*"
    # response = http.request(request)
    # response = Net::HTTP.get_response(uri)
    #endregion
     url = "https://api.yelp.com/v3/autocomplete?text=#{search_query}&latitude=#{40.705280}&longitude=#{-74.014260}"
    response = RestClient.get(url, headers={"Authorization": "Bearer #{ENV["YELP_API"]}"})
    response.body
    result = JSON.parse(response.body)
    puts result
    result
  end
end
