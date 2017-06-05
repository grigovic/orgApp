class AddEmployeeToTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :employee, foreign_key: true
  end
end
