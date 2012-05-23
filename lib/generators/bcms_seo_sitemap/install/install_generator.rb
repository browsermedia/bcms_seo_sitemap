require 'cms/module_installation'

class BcmsSeoSitemap::InstallGenerator < Cms::ModuleInstallation
  
  
  def add_route
    route 'mount_bcms_seo_sitemap'
  end

  
end
