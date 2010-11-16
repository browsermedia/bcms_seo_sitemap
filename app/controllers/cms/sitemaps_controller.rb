class Cms::SitemapsController < ApplicationController

  def google
    @items = Cms::SitemapGenerator.items
    respond_to do |format|
      format.xml
    end
  end
end
