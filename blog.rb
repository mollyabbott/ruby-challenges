class Blog

	@@all_blog_posts =[]
	@@num_blog_posts= 0

	def self.all
		@@all_blog_posts
	end

	def self.add(thing)
		@@all_blog_posts << thing
		@@num_blog_posts =+ 1
	end

	def self.publish 
		@@all_blog_posts.each do |post|
			puts "Title: \n #{post.title}"
			puts "Body: \n #{post.content}"
			puts "Publish Date: \n #{post.publish_date}"
			puts "Author: \n #{post.author}"
		end
	end
end

class BlogPost < Blog

	def self.create
		post = new
		puts "Name your blog post:"
		post.title = gets.chomp
		puts "Your blog post content:"
		post.content = gets.chomp
		puts "Your name:"
		post.author = gets.chomp
		post.publish_date = Time.now
		post.save
		puts "Do you want to create another post? [Y/N]"
		create if gets.chomp.downcase =='y'
	end

	def title=(blog_title)
		@title = blog_title
	end

	def title
		return @title
	end

	def author=(author)
		@author = author
	end

	def author
		return @author
	end

	def publish_date=(publish_date)
		@publish_date = publish_date
	end

	def publish_date
		return @publish_date
	end

	def content=(content)
		@content = content
	end

	def content
		return @content
	end

	def save
		BlogPost.add(self)
	end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish






