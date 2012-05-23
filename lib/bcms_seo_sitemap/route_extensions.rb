module BcmsSeoSitemap::RouteExtensions
  def routes_for_bcms_seo_sitemap
    match '/sitemaps/google.xml'=>'sitemaps#google', :as =>:google_sitemap
    mount BcmsSeoSitemap::Engine => "/bcms_seo_sitemap"
  end
end
