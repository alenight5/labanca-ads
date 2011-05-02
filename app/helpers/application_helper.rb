module ApplicationHelper
  def title
    base_title = "Tienda La Banca"
    return base_title unless @title
    "#{base_title}: #{title}"
  end 
end
