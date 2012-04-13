module ApplicationHelper
  # include TweetButton
  
  def icon(name, content)
    raw("<i class=\"icon-#{name}\"></i> ") + content
  end
  
  def is_active?(path)
    "active" if current_page?(path)
  end
  
  def is_current?(path)
    current_page?(path)  
  end
  
  def content_tag_for(url, title, id)
    content_tag(:li, link_to( is_current?(url) ? icon("share-alt", title) : title, url, class: is_active?(url), id: id))
  end
end
