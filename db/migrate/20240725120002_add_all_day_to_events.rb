class AddAllDayToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :all_day, :boolean
  end
end
