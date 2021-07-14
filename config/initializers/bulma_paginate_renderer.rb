require 'will_paginate/view_helpers/action_view'
class BulmaPaginateRenderer < WillPaginate::ActionView::LinkRenderer
  def container_attributes
    { class: 'pagination' }
  end

  def html_container(html)
    child = tag(:ul, html, container_attributes)
    tag(:nav, child)
  end

  def page_number(page)
    if page == current_page
      '<li>' + link(page, page, rel: rel_value(page),class: 'pagination-link is-current') + '</li>'
    else
      '<li>' + link(page, page, rel: rel_value(page),class: 'pagination-link') + '</li>'
    end
  end

  def previous_page
    num = @collection.current_page > 1 && @collection.current_page - 1
    previous_or_next_page(num, '<span aria-hidden="true">&laquo;</span>')
  end

  def next_page
    num = @collection.current_page < total_pages && @collection.current_page + 1
    previous_or_next_page(num, '<span aria-hidden="true">&raquo;</span>')
  end

  def previous_or_next_page(page, text)
    if page
      '<li>' + link(text, page, class: 'pagination-link') + '</li>'
    else
      tag(:span, text, class:'pagination-link bg-dark-blue near-white')
    end
  end
end
