module ApplicationHelper
  # change the default link renderer for will_paginate
  def will_paginate(coll_or_options = nil, options = {})
    if coll_or_options.is_a? Hash
      options = coll_or_options
      coll_or_options = nil
    end
    unless options[:renderer]
      options = options.merge renderer: BulmaPaginateRenderer
    end
    super *[coll_or_options, options].compact
  end
end
