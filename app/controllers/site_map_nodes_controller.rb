class SiteMapNodesController < ApplicationController
  def index
    render SiteMapNode.first
  end
end
