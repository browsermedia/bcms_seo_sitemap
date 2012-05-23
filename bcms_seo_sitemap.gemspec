# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_seo_sitemap/version"

Gem::Specification.new do |s|
  s.name = "bcms_seo_sitemap"
  s.version = BcmsSeoSitemap::VERSION
  s.summary = "A Sitemap Module for BrowserCMS"
  s.rubyforge_project = s.name
  s.require_paths = ['lib']
  s.email = "github@browsermedia.com"
  s.homepage = "https://github.com/browsermedia/bcms_seo_sitemap"
  s.description = "This module generates XML Sitemaps for BrowserCMS Projects"
  s.authors = ["BrowserMedia"]
  
  s.files = Dir["{app,config,db,lib}/**/*"]
  s.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt" ]

  s.test_files += Dir["test/**/*"]
  s.test_files -= Dir['test/dummy/**/*']

  s.add_dependency("browsercms", "< 3.6.0", ">= 3.5.0.rc3")
  s.add_dependency 'bcms_settings', ['~> 1.0.0']
end

