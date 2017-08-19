class ChangeColumnToExperience < ActiveRecord::Migration[5.1]
  def change
    change_column :experiences, :date, :date
  end
end
