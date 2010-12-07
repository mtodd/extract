module ApplicationHelper
  
  def order_by_links(path_function, name)
    link_to("^", send(path_function, :order_by=>"#{name}")) + " " + link_to("v", send(path_function, :order_by=>"#{name} desc"))
  end
  
end
