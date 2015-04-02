require 'pry'

class Post
  def title=(title)
    @title = title
  end

  def title
    @title
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def body=(body)
    @body = body
  end

  def body
    @body
  end
end

class Author
  def first_name=(first_name)
    @first_name = first_name
  end

  def first_name
    @first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def last_name
    @last_name
  end

  def email=(email)
    @email = email
  end

  def email
    @email
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

author = Author.new 

puts 'Hi there, welcome to the wordpress command line program'
puts
puts 'To start, please enter your first name:'
author.first_name = gets.strip
puts 'Thanks. Please enter your last name:'
author.last_name = gets.strip
puts "Nice to meet you #{author.full_name}! One last thing, please enter your email:"
author.email = gets.strip
puts "Great, thanks for that info. Let's add some posts"
puts

posts = []

ask_for_posts = true
while ask_for_posts == true

  post = Post.new

  puts 'Please enter the title of your post:'

  post.title = gets.strip

  puts 'Please enter the body of your post:'

  post.body = gets.strip

  post.author = author

  posts << post

  puts 'Would you like to add another post? Type `exit` if you would like to quit'
  ask_for_posts = false if gets.strip == 'exit'
end

puts
puts "Here are your posts:"
posts.each do |post|
  puts "Title: #{post.title}"
  puts "By: #{post.author.full_name}"
  puts post.body
  puts "Contact the author at: #{post.author.email}"
  puts
end