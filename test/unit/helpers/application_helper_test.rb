require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  
  test "order_by_links should return properly formatted string" do
    assert_equal "<a href=\"/activities?order_by=day\">^</a> <a href=\"/activities?order_by=day+desc\">v</a>", order_by_links("activities_path", "day")
  end
  
end
