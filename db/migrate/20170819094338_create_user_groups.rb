class CreateUserGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :user_groups do |t|
      t.references :group, index: :true
      t.references :user, index: :true
      t.boolean :is_host, default: false, null: false

      t.timestamps
    end
  end
end
