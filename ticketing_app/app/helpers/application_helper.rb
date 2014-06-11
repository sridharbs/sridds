module ApplicationHelper
  def set_selected_menu menu
    "active" if menu == @menu
  end
end
