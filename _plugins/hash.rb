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

    def stars(i)
      out = (0...i.to_i).map{|i| '<i class="icon-star"></i>'}
      out.concat (0...(3 - i.to_i)).map{|i| '<i class="icon-star-empty"></i>'}

      return out.join("")
    end
  end
end

Liquid::Template.register_filter(Jekyll::HashFilter)