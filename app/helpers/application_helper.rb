module ApplicationHelper
  
  def order_by_links(path_function, name)
    link_to("^", send(path_function, :order_by=>"#{name}")) + " " + link_to("v", send(path_function, :order_by=>"#{name} desc"))
  end
  
  def format_duration(integer)
    hours = integer / (60 * 60)
    minutes = (integer - (hours * 60 * 60)) / 60
    seconds = (integer - (hours * 60 * 60) - (minutes * 60))
    return "#{hours}:#{minutes}:#{seconds}"
  end
  
end
