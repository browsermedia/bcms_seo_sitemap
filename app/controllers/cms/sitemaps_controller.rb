class Cms::SitemapsController < Cms::BaseController 

  layout 'cms/administration'

  check_permissions :administrate
  before_filter :set_menu_section

  def edit
    @depth = Cms::SitemapGenerator.depth
  end

  def update
    Cms::SitemapGenerator.depth = params[:depth]
    flash[:notice] = "Sitemap depth updated"
    redirect_to :action => :edit
  end

  private
  def set_menu_section
    @menu_section = 'xml_sitemaps'
  end
end
