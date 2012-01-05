require 'test_helper'

class SeoSitemapTest < ActionView::TestCase
  
  def setup
    
  end
  
  test "build sitemap" do
    items = Cms::SitemapGenerator.items
    assert_nil items, "No pages = nil items"
  end
  
  test "build sitemap with pages" do
    root = Section.create(:name=>"Root", :root=>true, :path=>"/")
    homepage = Page.create!(:name=>"Home", :section=>root, :path=>"/", :publish_on_save=>true)
    
    assert_equal([{:id=>"page_1", :selected=>true, :url=>"/", :name=>"Home"}], Cms::SitemapGenerator.items)
  end
  
end
