class AddMotheridToChildren < ActiveRecord::Migration
  def change
    add_column :children, :mother1_id, :integer
  end
end
