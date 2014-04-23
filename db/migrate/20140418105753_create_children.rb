class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.float :age
      t.timestamps
    end
  end
end
