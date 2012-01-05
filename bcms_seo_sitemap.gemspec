# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_seo_sitemap/version"

Gem::Specification.new do |s|
  s.name = "bcms_seo_sitemap"
  s.version = BcmsSeoSitemap::VERSION
  s.summary = "A Sitemap Module for BrowserCMS"
  s.rubyforge_project = "bcms_seo_sitemap"
  s.require_paths = ['lib']
  s.email = "github@browsermedia.com"
  s.homepage = "https://github.com/browsermedia/bcms_seo_sitemap"
  s.description = "This module generates XML Sitemaps for BrowserCMS Projects"
  s.authors = ["BrowserMedia"]
  s.files = []
  s.files += Dir["app/**/*"]
  s.files += Dir["doc/**/*"]
  s.files += Dir["db/migrate/[0-9]*.rb"].reject {|f| f =~ /_browsercms|_load_seed/ }
  s.files -= Dir["db/migrate/*create_cms_modules.rb"]
  s.files += Dir["lib/**/*"]
  s.add_dependency 'browsercms', ['~> 3.3.0']
  s.add_dependency 'bcms_settings', ['~> 0.1.0']
end

