class Schedule < ActiveRecord::Base
  belongs_to :company

  attr_accessible :company_id, :description
end
