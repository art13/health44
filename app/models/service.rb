class Service < ActiveRecord::Base
 # default_scope order('updated_at ASC')
  belongs_to :service_category
  has_many :variants, :dependent => :destroy 

  validates :title, presence: true

  attr_accessible :title, :price, :duration, :service_category_id

end
