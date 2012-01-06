require 'browsercms'

module BcmsSeoSitemap
  class Engine < Rails::Engine
    include Cms::Module
    
    initializer "bcms_seo_sitemap.require_classes"do      
      # Need to have loaded all BrowserCMS app directories first before we can reference classes there.
      require 'bcms_seo_sitemap/generator'
    end
  end
end