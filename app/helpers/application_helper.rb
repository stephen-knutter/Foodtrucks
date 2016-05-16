module ApplicationHelper
  def do_title(page_title='')
    base_name = 'BeerMaps'
    if page_title.empty?
      base_name
    else
      page_title + " | " + base_name
    end
  end
  
end
