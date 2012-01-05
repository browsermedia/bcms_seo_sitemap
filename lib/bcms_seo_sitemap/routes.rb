module Cms::Routes
  def routes_for_bcms_seo_sitemap
    match '/sitemaps/google.xml'=>'sitemaps#google', :as =>:google_sitemap
    namespace :cms do 
      get '/xml_sitemaps'=>'sitemaps#edit', :as =>:xml_sitemaps
      put '/xml_sitemaps'=>'sitemaps#update', :as =>:xml_sitemaps
    end
  end
end
