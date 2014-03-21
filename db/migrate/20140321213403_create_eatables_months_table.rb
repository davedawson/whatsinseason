class CreateEatablesMonthsTable < ActiveRecord::Migration
  def change
    create_table :eatables_months do |t|
      t.belongs_to :eatable
      t.belongs_to :month
    end
  end
end
