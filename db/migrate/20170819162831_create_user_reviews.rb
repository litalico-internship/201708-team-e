class CreateUserReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :user_reviews do |t|
      t.references :user, foreign_key: true, index: true
      t.references :review, foreign_key: true, index: true

      t.timestamps
    end
  end
end
