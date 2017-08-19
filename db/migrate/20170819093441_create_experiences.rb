class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string    :title
      t.datetime  :date
      t.string    :place
      t.text      :content
      t.text      :image

      t.timestamps
    end
  end
end
