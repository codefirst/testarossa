module ApplicationHelper
  def icon_link_to(text, url, icon_name, options = {})
    link_to("<span class=\"glyphicon glyphicon-#{icon_name}\"></span> #{text}".html_safe, url, options)
  end
end
