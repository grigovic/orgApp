class AddColumnManagerToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :manager_id, :integer
  end
end
