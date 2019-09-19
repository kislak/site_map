class CreateSiteMapNodes < ActiveRecord::Migration[6.0]
  def change
    create_table :site_map_nodes do |t|
      t.string :link_name
      t.string :path

      t.timestamps
    end
  end
end
