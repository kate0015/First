class AddJobColumnsToMother1s < ActiveRecord::Migration
  def change
  add_column :mother1s, :job, :string
  end
end
