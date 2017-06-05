class AddColumnEmployeeToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :employee, :integer
  end
end
