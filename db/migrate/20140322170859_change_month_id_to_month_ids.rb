class ChangeMonthIdToMonthIds < ActiveRecord::Migration
  def change
    rename_column :eatables, :month_id, :month_ids
  end
end
