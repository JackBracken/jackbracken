class CreateContactPages < ActiveRecord::Migration
  def change
    create_table :contact_pages do |t|
      t.string :title
      t.text :body
      t.string :from

      t.timestamps null: false
    end
  end
end
