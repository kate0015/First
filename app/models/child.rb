class Child < ActiveRecord::Base
  attr_accessible :age, :name, :mother1_id
  belongs_to :mother1
end
