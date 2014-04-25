module ApplicationHelper
  #Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = root_name
    page_title.empty? ? base_title : "#{base_title} | #{page_title}"
  end

  def root_name
    "TECHseven"
  end
end
