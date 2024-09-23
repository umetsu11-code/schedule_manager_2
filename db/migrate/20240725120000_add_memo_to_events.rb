class AddMemoToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :memo, :text
  end
end


