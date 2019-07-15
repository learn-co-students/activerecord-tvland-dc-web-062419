class ChangeGenresToGenre < ActiveRecord::Migration[5.2]
  def change
    rename_column :shows, :genres, :genre
  end
end
