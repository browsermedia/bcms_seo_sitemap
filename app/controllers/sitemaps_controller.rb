class SitemapsController < ApplicationController

  respond_to :xml
  
  def google
    @items = BcmsSeoSitemap::Generator.items
    respond_with @items
  end
end
