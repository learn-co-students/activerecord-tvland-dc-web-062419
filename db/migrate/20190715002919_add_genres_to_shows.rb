class AddGenresToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :genres, :string
  end
end
