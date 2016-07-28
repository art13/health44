class Document < ActiveRecord::Base
	
	default_scope order('priority DESC')

	scope :active, -> {where(:active => true) }
	scope :lows, -> {where(:page_type => 1).active }
	scope :licenses, -> {where(:page_type => 2).active }
	scope :contracts, -> {where(:page_type => 3).active	}
	scope :others, -> {where(:page_type => 4).active }
	scope :oms, -> {where(:page_type => 5).active }

	validates :name, :page_type, :presence => true
	
	attr_accessible :name, :active, :page_type, :delete_doc, :document, :priority

	has_attached_file :document
	
	attr_accessor :delete_doc
	before_validation { document.clear if delete_doc == '1' }
end