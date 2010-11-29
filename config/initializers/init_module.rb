require File.join(File.dirname(__FILE__), "..", "..", "lib", "bcms_seo_sitemap")

unless Cms::Settings.modules.include?('bcms_seo_sitemap')
  Cms::Settings.register('bcms_seo_sitemap')
end
