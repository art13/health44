class Letter < ActiveRecord::Base
  validates :body, presence: true
  
  attr_accessible :sender_name, :sender_age, :sender_email, :body
end
