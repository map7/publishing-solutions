class AddGenreToRefineryBacklists < ActiveRecord::Migration
  def change
    add_column :refinery_backlists, :genre_id, :integer
  end
end
