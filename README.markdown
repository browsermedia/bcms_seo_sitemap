#Sitemaps Module for BrowserCMS

This is  a simple module that generates a basic xml Sitemap for BrowserCMS
projects. For each published page, it generates the `loc` tag according to the [Sitemap
protocol](http://www.sitemaps.org/protocol.php), but no metadata.

To determine which pages should be included in the Sitemap, it leverages
BrowserCMS' menu_items helper. This means that hidden or unpublished pages will
not be included. Empty sections are also ignored.

The xml document is exposed at /sitemaps/google.xml

## Installation

The Seo Sitemap module installs like most other BrowserCMS modules (http://guides.browsercms.org/installing_modules.html)
but it does not require a database migration.

    gem install bcms_seo_sitemap
    
## Set up your application to use the module

### 1. Edit config/environment.rb 
    
    config.gem "browsercms"
    config.gem "bcms_seo_sitemap"
    
### 2. Run the following commands
  
    script/generate browser_cms
  
### 3. Edit config/routes.rb

Make sure the routes.rb loads the sitemap routes.

    map.routes_for_bcms_seo_sitemap
    map.routes_for_browser_cms

##Configuration

The module adds a new entry under Administration > Tools labeled XML Sitemaps
where the module can be configured.

At the moment, only the "depth" option is available, which is passed to the
menu_items helper method. Setting a depth of 2 will result in a call to menu_items
like this:

    menu_items(:depth => 2, :show_all_siblings => true, :page => Page.find_by_path('/')

The module's configuration (currently just one value) is serialized to yaml and
kept in config/sitemap.yml. It is not necessary to create this file manually. It 
will be created when needed.

A depth value of 0 (the default) will include all published pages.



