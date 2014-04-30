class Mother1 < ActiveRecord::Base
  attr_accessible :age, :name, :surname, :job, :children_id
 	has_many :children, :dependent => :destroy
 	validates :age, { numericality: { greater_than: 10 } }
 	validates :age, :numericality => true, :on => :update
end
