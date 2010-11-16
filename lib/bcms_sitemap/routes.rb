module Cms::Routes
  def routes_for_bcms_sitemap
    google_sitemap 'cms/sitemaps/google.xml', :controller => 'cms/sitemaps', :action => 'google'
  end
end
