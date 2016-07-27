class Book < ActiveRecord::Base
     self.table_name = "w_types_workers"
     belongs_to :worker 
     belongs_to :w_type
end
