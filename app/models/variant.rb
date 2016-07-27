class Variant < ActiveRecord::Base
  belongs_to :service

  validates :title, :price, presence: true

  attr_accessible :title, :price, :service_id
end
