class ChangeGroupIdColumnToExperienceId < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_groups, :group_id, :experience_id
  end
end
