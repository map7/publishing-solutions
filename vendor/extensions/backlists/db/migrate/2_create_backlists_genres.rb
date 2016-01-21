class CreateBacklistsGenres < ActiveRecord::Migration

  def up
    create_table :refinery_backlists_genres do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-backlists"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/backlists/genres"})
    end

    drop_table :refinery_backlists_genres

  end

end
