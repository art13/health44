class Discount < ActiveRecord::Base
  belongs_to :company

  validates :title, :presence => true

  attr_accessible :title, :condition, :company_id
end
