class ChangeEatableIdsToText < ActiveRecord::Migration
  def change
    change_table :eatables do |t|
      t.change :month_id, :text
    end
  end
end
