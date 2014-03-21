class CreateEatables < ActiveRecord::Migration
  def change
    create_table :eatables do |t|
      t.integer :food_id
      t.integer :location_id
      t.integer :month_id
      t.string :description

      t.timestamps
    end
  end
end
