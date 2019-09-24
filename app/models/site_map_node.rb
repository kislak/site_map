# frozen_string_literal: true

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

class SiteMapNode < ApplicationRecord
  has_ancestry

  before_save :set_html_id
  before_save :set_html_ref

  private

  def set_html_id
    self.html_id = parent ? "#{parent.html_id}.#{html_id_suffix}" : html_id_suffix
  end

  def html_id_suffix
    link_name.underscore.gsub(' ', '_')
  end

  def set_html_ref
    self.html_href = parent ? "#{parent.html_href}#{link_path}/" : link_path
  end
end
