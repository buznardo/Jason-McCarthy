module ApplicationHelper
  def all_nav_link
    if params[:tag_name].present?
      class_name = ''
    else
      class_name = 'current'
    end
    build_nav_li("All", shoots_path, class_name)
  end

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'current' : ''
    build_nav_li(link_text, link_path, class_name)
  end

  def build_nav_li(link_text, link_path, class_name='')
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path, remote: true, class: "hello"
    end
  end
  
  def landing_photo
    random = (1..4).to_a.sample
    image_tag "home-#{random}.png", {:class => 'bg'}
  end
end
