class Mother1 < ActiveRecord::Base
  attr_accessible :age, :name, :surname, :job, :children_id
 	has_many :children, :dependent => :destroy
end
