# == Schema Information
#
# Table name: site_map_nodes
#
#  id         :integer          not null, primary key
#  ancestry   :string
#  link_name  :string
#  path       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_site_map_nodes_on_ancestry  (ancestry)
#

class SiteMapNode < ApplicationRecord
end
