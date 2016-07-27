# encoding: utf-8
class Company < ActiveRecord::Base
  has_many :departments, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  has_many :addresses, :dependent => :destroy
  has_many :partners, :dependent => :destroy
  has_many :discounts, :dependent => :destroy
  has_many :schedules, :dependent => :destroy

  accepts_nested_attributes_for :schedules
  
  validates :title, presence: true

  attr_accessible :title, :description

end

