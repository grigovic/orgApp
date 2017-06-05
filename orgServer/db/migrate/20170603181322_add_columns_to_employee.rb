class AddColumnsToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :last_name, :string
    add_column :employees, :position, :string
    add_column :employees, :type, :string
  end
end
