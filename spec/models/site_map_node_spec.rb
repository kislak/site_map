# == Schema Information
#
# Table name: site_map_nodes
#
#  id         :integer          not null, primary key
#  ancestry   :string
#  html_href  :string
#  link_name  :string
#  link_path  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  html_id    :string
#
# Indexes
#
#  index_site_map_nodes_on_ancestry  (ancestry)
#

require 'rails_helper'

RSpec.describe SiteMapNode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
