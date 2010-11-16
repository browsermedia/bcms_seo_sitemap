class Cms::SitemapsController < ApplicationController

  include Cms::MenuHelper

  def google
    #@items = SitemapGenerator.google
    @items = menu_items :page => Page.find_by_path('/'), :show_all_siblings => true
    #raise @items.inspect
    respond_to do |format|
      format.xml
    end
  end
end
