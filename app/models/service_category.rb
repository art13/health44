class ServiceCategory < ActiveRecord::Base
  default_scope order('updated_at ASC')
  belongs_to :department
  has_many :services, :dependent=> :destroy

  validates :title, presence: true
  
  attr_accessible :title, :description, :parent_id, :department_id
end
