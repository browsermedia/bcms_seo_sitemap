require 'test_helper'


class GoogleSitemapsTest < ActionDispatch::IntegrationTest  
  test "get sitemap" do
    get '/sitemaps/google.xml?format=xml'
    assert_response :success
  end
end