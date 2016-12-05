module ApplicationHelper
  def belongs_to_user?(resource)
    resource.user == current_user
  end
  
  def active_page(active_page)
    @active == active_page ? "active" : ""
  end
end
