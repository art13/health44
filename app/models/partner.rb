class Partner < ActiveRecord::Base
  belongs_to :company

  validates :title, :body, presence: true
    
  attr_accessible :title, :body, :company_id
end
