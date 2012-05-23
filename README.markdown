# Sitemaps Module for BrowserCMS

This is  a simple module that generates a basic xml Sitemap for BrowserCMS
projects. For each published page, it generates the `loc` tag according to the [Sitemap
protocol](http://www.sitemaps.org/protocol.php), but no metadata.

To determine which pages should be included in the Sitemap, it leverages
BrowserCMS' menu_items helper. This means that hidden or unpublished pages will
not be included. Empty sections are also ignored.

The xml document is exposed at /sitemaps/google.xml, but you might need to add ?format=xml to view this in a browser.

## Installation

The Seo Sitemap module installs like most other BrowserCMS modules.
You'll also need to install the [Settings module](https://github.com/browsermedia/bcms_settings)
which Seo Sitemap uses to write configuration values. Setting up both modules at
once is easy though:

	gem install bcms_seo_sitemap
    rails generate cms:install bcms_settings
	rails generate cms:install bcms_seo_sitemap
	rake db:migrate

At this point, the sitemap module will be installed and usable. The setting module will automatically be configured to use it.


## Configuration

The module adds a new entry under Administration > Tools labeled "Google
Sitemap" where the module can be configured.

At the moment, only the "depth" option is available, which is passed to the
menu_items helper method. Setting a depth of 2 will result in a call to menu_items
like this:

    menu_items(:depth => 2, :show_all_siblings => true, :page => Page.find_by_path('/')

The module's configuration (currently just one value) is written to a global key
value store provided by the Settings module. 

A depth value of 0 (the default) will include all published pages.

## Troubleshooting

In your browser, when you test the /sitemaps/google.xml you will need to call it using the xml format, otherwise it will return a 406 unacceptable. This occurs since the browser is specifying it want HTML. Call like so instead:

```
http://localhost:3000/sitemaps/google.xml?format=xml
```



