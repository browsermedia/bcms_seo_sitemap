module Cms
  module SitemapGenerator
    extend self
    extend Cms::MenuHelper

    CONFIG_PATH = File.join(Rails.root, 'config', 'sitemap.yml')

    def items
      options = {:page => Page.find_by_path('/'), :show_all_siblings => true}
      options.merge!(configuration.symbolize_keys!)
      menu_items(options)
    end

    def update_configuration(new_depth)
      new_config = configuration.merge!({:depth => new_depth.to_i})

      File.open(CONFIG_PATH, 'w') do |out|
        YAML.dump(new_config, out)
      end
      @@config = nil
    end

    def configuration
      @@config ||= YAML::load(File.open(CONFIG_PATH))
    rescue Errno::ENOENT
      {}
    end

  end
end
