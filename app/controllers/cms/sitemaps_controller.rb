class Cms::SitemapsController < Cms::BaseController 

  layout 'cms/administration'

  check_permissions :administrate, :except => [:google]
  skip_before_filter :login_required, :only => [:google]
  skip_before_filter :cms_access_required, :only => [:google]

  before_filter :set_menu_section

  def google
    @items = SitemapGenerator.items
    respond_to do |format|
      format.xml
    end
  end

  def edit
    @depth = SitemapGenerator.depth
  end

  def update
    SitemapGenerator.depth = params[:depth]
    flash[:notice] = "Sitemap depth updated"
    redirect_to :action => :edit
  end

  private
  def set_menu_section
    @menu_section = 'xml_sitemaps'
  end
end
