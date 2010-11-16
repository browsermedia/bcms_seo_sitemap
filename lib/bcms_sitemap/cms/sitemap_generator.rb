module Cms
  module SitemapGenerator
    extend self
    extend Cms::MenuHelper

    def items
      options = {:page => Page.find_by_path('/'), :show_all_siblings => true}
      options.merge!(config.symbolize_keys!)
      menu_items(options)
    end

    def update_configuration
      #write to the file and set @@config to nil
      @@config = nil
    end


    def config
      @@config ||= YAML::load(File.open(File.join(Rails.root, 'config', 'sitemap.yml')))
    end

  end
end
