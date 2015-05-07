class AddExifToPhotographs < ActiveRecord::Migration
  def change
    add_column :photographs, :camera_model,   :string
    add_column :photographs, :aperture,       :string
    add_column :photographs, :focal_length,   :string
    add_column :photographs, :shutter_speed,  :string
    add_column :photographs, :iso,            :string
    add_column :photographs, :map_location,   :string
  end
end
