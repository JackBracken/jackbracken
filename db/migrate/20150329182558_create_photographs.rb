class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :title
      t.date :date_taken
      t.text :meta_data

      t.timestamps null: false
    end
  end
end
