class RenameContactTitleToName < ActiveRecord::Migration
  def change
    rename_column :contact_pages, :title, :name
  end
end
