require 'bcms_settings/cms/settings'

module BcmsSeoSitemap
  module Generator
    extend self
    extend Cms::MenuHelper

    def items
      options = {:page => Page.find_by_path('/'), :show_all_siblings => true}
      if configuration.depth && configuration.depth.nonzero?
        options.merge!({:depth => configuration.depth})
      end
      items = menu_items(options)
      return [] unless items
      items
    end

    # These setter and getter methods are probably not needed anymore.
    # Access to Cms::Settings.bcms_seo_sitemap could be done directly
    # from Cms::SitemapsController and that would probably be cleaner.
    #
    # I'm keeping them here to keep the changes contained to this file
    # only for now.
    def depth=(new_depth)
      configuration.depth = new_depth.to_i
    end

    # If depth has never been set, it returns nil
    def depth
      configuration.depth || 0
    end

    private

    def configuration
      Cms::Settings.bcms_seo_sitemap
    end
  end
end

