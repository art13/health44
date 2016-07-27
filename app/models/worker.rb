class Worker < ActiveRecord::Base
  has_many :books, dependent: :delete_all
  has_many :w_types, through: :books
  has_and_belongs_to_many :departments, join_table: 'departments_workers' 
  has_attached_file :photo, :styles => { :medium => "238x238>", :thumb => "100x100>"},
                            :path => ":rails_root/public/:attachment/:id/:style/:basename.:extension",
                            :url => "/:attachment/:id/:style/:basename.:extension",
                            :default_url => '/assets/doctor.jpg'
  
  validates :firstname, :lastname, :secondname, presence: true
  validates_attachment :photo

  attr_accessible :firstname, :lastname, :secondname, :experience, :information, :photo,
                  :position, :department_ids, :w_type_ids, :list_position

  def get_departments_list
  	result = ''
  	departments.each do |dep|
  	  result << "&nbsp;&nbsp;&nbsp;<<<b>"
  	  result << dep.title
      result << "</b>>>&nbsp;&nbsp;&nbsp;"
  	end if not departments.empty?
  	result.html_safe
  end

  def full_name
    "#{lastname} #{firstname} #{secondname}"
  end
  def fix_type
    
  end
end
