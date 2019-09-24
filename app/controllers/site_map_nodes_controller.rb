# frozen_string_literal: true

class SiteMapNodesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: SiteMapNode.arrange_serializable }
    end
  end
end
