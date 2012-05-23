module BcmsSeoSitemap::RouteExtensions
  
  # Add this modules routes to the project.
  def mount_bcms_seo_sitemap
    match '/sitemaps/google.xml'=>'sitemaps#google', :as =>:google_sitemap
    mount BcmsSeoSitemap::Engine => "/bcms_seo_sitemap"
  end
  
  alias :routes_for_bcms_seo_sitemap :mount_bcms_seo_sitemap
end
