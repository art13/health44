class Department < ActiveRecord::Base
  belongs_to :company
  has_many :articles, :dependent => :destroy
  has_many :service_categories, :dependent => :destroy
  has_and_belongs_to_many :workers, join_table: 'departments_workers'

  validates :title, presence: true

  attr_accessible :title, :description, :company_id, :worker_ids
end
