require 'active_support/inflector'
module Jekyll
  module HashFilter
    def score_category(i)
      ActiveSupport::Inflector.humanize(i[0])
    end

    def score_name(i)
      ActiveSupport::Inflector.humanize(i[0])
    end

    def score_value(i)
      i[1]
    end
  end
end

Liquid::Template.register_filter(Jekyll::HashFilter)