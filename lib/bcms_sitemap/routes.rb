module Cms::Routes
  def routes_for_bcms_sitemap
    namespace :cms do |cms|
      cms.google_sitemap '/xml_sitemaps/google.xml', :controller => 'sitemaps', :action => 'google'
      cms.xml_sitemaps 'xml_sitemaps', :controller => 'sitemaps', :action => 'edit', :conditions => {:method => :get}
      cms.connect '/xml_sitemaps', :controller => 'sitemaps', :action => 'update' , :conditions => {:method => :put}
    end
    #google_sitemap 'cms/sitemaps/google.xml', :controller => 'cms/sitemaps', :action => 'google'
  end
end


      #cms.with_options :controller => "cache" do |cache|
          #cache.cache "/cache", :action => "show", :conditions => {:method => :get}
        #cache.connect "/cache", :action => "destroy", :conditions => {:method => :delete}
      #end
