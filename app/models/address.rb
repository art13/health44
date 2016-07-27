class Address < ActiveRecord::Base
  belongs_to :company

  validates :location, presence: true

  attr_accessible :location, :latitude, :longitude, :company_id

  before_save :get_location

  private
  	def get_location
  		require 'json'
  		require 'uri'
  		require 'open-uri'
  		response = open(URI.escape("http://geocode-maps.yandex.ru/1.x/?geocode=#{self.location}&format=json")).read
  		json_object = JSON.parse(response)
  		longitude, latitude = json_object["response"]["GeoObjectCollection"]["featureMember"].first["GeoObject"]["Point"]["pos"].split(' ')
  		self.longitude = longitude
  		self.latitude = latitude
  	end
end
