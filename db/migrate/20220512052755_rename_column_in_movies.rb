class RenameColumnInMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :url, :poster_url
  end
end
