class Article < ActiveRecord::Base
  belongs_to :department
  
  validates :title, :body, presence: true
  
  attr_accessible :title, :body, :department_id
end
