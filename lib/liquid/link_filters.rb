module Liquid
  module LinkFilters

    def link_to anchor, *args
      "<a href=#{args.first}>#{anchor}</a>"
    end

    def link_to_unless_current anchor, *args
      request = ApplicationController.application.request
      if request.path == args.first or request.url == args.first
        anchor
      else
        link_to(anchor, *args)
      end
    end
  end
end

Liquid::Template.register_filter(Liquid::LinkFilters)
