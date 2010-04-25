module Liquid
  module LinkFilters
    def link_to input, href
      %{<a href="#{href}">#{input}</a>}
    end
  end
end

Liquid::Template.register_filter(Liquid::LinkFilters)
