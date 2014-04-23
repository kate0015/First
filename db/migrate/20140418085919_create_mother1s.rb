class CreateMother1s < ActiveRecord::Migration
  def change
    create_table :mother1s do |t|
      t.string :name
      t.string :surname
      t.float :age

      t.timestamps
    end
  end
end
