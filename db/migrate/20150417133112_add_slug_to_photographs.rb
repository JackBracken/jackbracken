class AddSlugToPhotographs < ActiveRecord::Migration
  def change
  	add_column :photographs, :slug, :string
  	add_index  :photographs, :slug, unique: true
  end
end
