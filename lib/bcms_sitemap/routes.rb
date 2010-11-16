module Cms::Routes
  def routes_for_bcms_sitemap
    namespace(:cms) do |cms|
      #cms.content_blocks :sitemaps
    end  
  end
end
