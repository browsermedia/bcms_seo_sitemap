module Cms::Routes
  def routes_for_bcms_sitemap
    google_sitemap '/sitemaps/google.xml', :controller => 'sitemaps', :action => 'google'
    namespace :cms do |cms|
      cms.xml_sitemaps 'xml_sitemaps', :controller => 'sitemaps', :action => 'edit', :conditions => {:method => :get}
      cms.connect '/xml_sitemaps', :controller => 'sitemaps', :action => 'update' , :conditions => {:method => :put}
    end
  end
end
