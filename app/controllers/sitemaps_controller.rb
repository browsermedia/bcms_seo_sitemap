class SitemapsController < ApplicationController

  respond_to :xml
  
  def google
    @items = Cms::SitemapGenerator.items
    respond_with @items
  end
end
