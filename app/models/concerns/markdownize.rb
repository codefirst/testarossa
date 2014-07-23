module Markdownize
  def description_to_html
    Maruku.new(description).to_html.html_safe
  end
end
