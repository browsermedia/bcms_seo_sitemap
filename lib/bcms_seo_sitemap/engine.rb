require 'browsercms'

module BcmsSeoSitemap
  class Engine < Rails::Engine
    include Cms::Module
    isolate_namespace BcmsSeoSitemap
    
    initializer "bcms_seo_sitemap.require_classes"do      
      # Need to have loaded all BrowserCMS app directories first before we can reference classes there.
      require 'bcms_seo_sitemap/generator'
    end
    
    initializer 'bcms_seo_sitemap.add_core_routes', :after => 'action_dispatch.prepare_dispatcher' do |app|
      ActionDispatch::Routing::Mapper.send :include, BcmsSeoSitemap::RouteExtensions
    end  
    
    initializer 'bcms_seo_sitemap.add_admin_menu_link' do |app|
      app.config.cms.tools_menu << { 
        :menu_section => 'xml_sitemaps', 
        :name => 'Google Sitemap', 
        :engine=>"bcms_seo_sitemap", 
        :route_name => 'xml_sitemaps_path'
        }
    end
  end
end