BcmsSeoSitemap::Engine.routes.draw do
  get '/xml_sitemaps' => 'sitemaps#edit', :as =>:xml_sitemaps
  put '/xml_sitemaps' => 'sitemaps#update', :as =>:xml_sitemaps
end
