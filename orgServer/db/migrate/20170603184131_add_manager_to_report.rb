class AddManagerToReport < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :manager, foreign_key: true
  end
end
