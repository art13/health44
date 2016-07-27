class WType < ActiveRecord::Base
	has_many :books, dependent: :delete_all
	has_many :workers, through: :books
	attr_accessible :w_type
end
