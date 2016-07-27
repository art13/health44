class Phone < ActiveRecord::Base
  default_scope order('id DESC')
  belongs_to :company

  validates :number, presence: true

  attr_accessible :number, :multichannel, :company_id

end
