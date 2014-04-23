class RemoveSurnameFromChildren < ActiveRecord::Migration
  def self.up
  	remove_column :children, :surname
  end

  def down
  end
end
