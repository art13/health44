class Document < ActiveRecord::Base
	scope :active, -> {where(:active => true)}
	scope :lows, -> {where(:page_type => 1)}
	scope :licenses, -> {where(:page_type => 2)}
	scope :contracts, -> {where(:page_type => 3)}
	scope :others, -> {where(:page_type => 4)}
	scope :oms, -> {where(:page_type => 5)}

	validates :name, :page_type, :presence => true
	
	attr_accessible :name, :active, :page_type, :delete_doc, :document, :priority

	has_attached_file :document
	
	attr_accessor :delete_doc
	before_validation { document.clear if delete_doc == '1' }
end