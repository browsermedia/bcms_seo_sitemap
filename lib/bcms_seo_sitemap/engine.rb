require 'browsercms'

module BcmsSeoSitemap
  class Engine < Rails::Engine
    include Cms::Module
    
    initializer "bcms_seo_sitemap.require_classes" do      
      # Need to have loaded all BrowserCMS app directories first.
      require 'bcms_seo_sitemap/cms/sitemap_generator'
      unless Cms::Settings.modules.include?('bcms_seo_sitemap')
         Cms::Settings.register('bcms_seo_sitemap')
      end
    end
  end
end