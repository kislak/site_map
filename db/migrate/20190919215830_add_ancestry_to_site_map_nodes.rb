class AddAncestryToSiteMapNodes < ActiveRecord::Migration[6.0]
  def change
    add_column :site_map_nodes, :ancestry, :string
    add_index :site_map_nodes, :ancestry
  end
end
