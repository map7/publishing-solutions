class CreateBacklistsBacklists < ActiveRecord::Migration

  def up
    create_table :refinery_backlists do |t|
      t.string :title
      t.string :author
      t.integer :picture_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-backlists"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/backlists/backlists"})
    end

    drop_table :refinery_backlists

  end

end
