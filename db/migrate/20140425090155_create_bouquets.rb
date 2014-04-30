class CreateBouquets < ActiveRecord::Migration
  def change
    create_table :bouquets do |t|
      t.string :name
      t.integer :number_of_flowers
      t.float :price

      t.timestamps
    end
  end
end
