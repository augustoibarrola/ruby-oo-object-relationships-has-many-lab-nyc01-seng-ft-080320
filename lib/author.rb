class Author
    attr_accessor :name
    def initialize name
        @name = name 
    end

    def posts
        Song.all.select do |x| 
            x.artist == self   
        end
    end

    def add_post post
        post.author = self
        self.posts << post
    end

    def add_post_by_title post_title
        post_two = Post.new post_title, self
    end

    def self.post_count
        #Posts.all[:author].count
    end

    

end
