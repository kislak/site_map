# == Schema Information
#
# Table name: site_map_nodes
#
#  id         :integer          not null, primary key
#  link_name  :string
#  path       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SiteMapNode < ApplicationRecord
end
