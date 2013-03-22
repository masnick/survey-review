# require 'pp'
# module Jekyll
#   class SortedPosts < Jekyll::Generator
#     safe true

#     def generate(site)
#       site.sorted_posts = site.posts.sort{|a,b| a.total_score <=> b.total_score}
#       puts site.sorted_posts.map{|s| s.total_score}
#     end
#   end
# end

module Jekyll
  class Post
    def <=>(other)
      cmp = self.data['total_score'].to_i <=> other.data['total_score'].to_i
      if 0 == cmp
        cmp = self.data['title'] <=> other.data['title']
      end
      return cmp
    end
  end
end