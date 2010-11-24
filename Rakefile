# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "bcms_seo_sitemap"
    gemspec.summary = "A Sitemap Module for BrowserCMS"
    gemspec.email = "github@browsermedia.com"
    gemspec.homepage = "https://github.com/browsermedia/bcms_seo_sitemap"
    gemspec.description = "This module generates XML Sitemaps for BrowserCMS Projects"
    gemspec.authors = ["BrowserMedia"]
    gemspec.files = []
    gemspec.files += Dir["app/**/*"]
    gemspec.files += Dir["doc/**/*"]
    gemspec.files += Dir["db/migrate/[0-9]*.rb"].reject {|f| f =~ /_browsercms|_load_seed/ }
    gemspec.files += Dir["lib/bcms_seo_sitemap.rb"]
    gemspec.files += Dir["lib/bcms_seo_sitemap/**/*"]
    gemspec.files += Dir["rails/init.rb"]
    gemspec.add_development_dependency 'browsercms'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

