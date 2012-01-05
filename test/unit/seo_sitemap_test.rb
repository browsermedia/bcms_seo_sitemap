require 'test_helper'

module BcmsSeoSitemap
  class SeoSitemapTest < ActionView::TestCase
  
    def setup
    
    end
  
    test "build sitemap with no pages" do
      items = Generator.items
      assert_equal [], items, "No pages = empty array"
    end
  
    test "build sitemap with pages" do
      root = Section.create(:name=>"Root", :root=>true, :path=>"/")
      homepage = Page.create!(:name=>"Home", :section=>root, :path=>"/", :publish_on_save=>true)
    
      assert_equal([{:id=>"page_1", :selected=>true, :url=>"/", :name=>"Home"}], Generator.items)
    end
  
  end
end