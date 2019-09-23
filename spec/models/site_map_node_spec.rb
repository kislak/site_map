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
  it 'has valid factory' do
    node = build(:site_map_node)
    expect(node.valid?).to be_truthy
    expect(node.save).to be_truthy
  end

  it 'set_html_id' do
    node = build(:site_map_node)
    expect(node.html_id).to eq(nil)
    node.save
    expect(node.html_id).to eq('home')
  end

  it 'set_html_ref' do
    node = build(:site_map_node)
    expect(node.html_href).to eq(nil)
    node.save
    expect(node.html_href).to eq('/home/')
  end
end
