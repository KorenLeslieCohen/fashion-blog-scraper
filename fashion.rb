require 'nokogiri'
require 'rubygems'
require 'open-uri'
require 'cgi'
require 'uri'
require 'pry'

class FashionBlog

  attr_accessor :name, :post, :url, :image_links, :all_image_links, :jpg_links

  ALL_BLOGS = []

  def initialize(name, post, url)
    @name = name
    @post = post
    @url = url
    @image_links = []
    @all_image_links = []
    @jpg_links = []
    ALL_BLOGS << self
  end

  # i want to scrape multiple pages of site, not just first page
  def get_links
    doc = Nokogiri::HTML(open(url))
    to_scrape = doc.css(post)
    image_links = to_scrape.xpath('a')
    all_image_links << image_links.map {|link| link["href"]}.compact
    all_image_links.each do |inner_array|
      inner_array.each do |link|
        # binding.pry
        jpg_links << link if link.include?(".jpg")
      end
    end
    jpg_links
  end

  def self.all_blogs
    ALL_BLOGS
  end

  # def self.all_blog_images
  #   ALL_BLOGS.get_links
  # end

end
 
# how do i scrape all of the pages of a site, not just the first page loaded??

atlantic = FashionBlog.new("Atlantic-Pacific", '.post-body .separator', "http://atlantic-pacific.blogspot.com")
sartorialist = FashionBlog.new("The Sartorialist", '.article-content p', "http://www.thesartorialist.com/")
sara_libby = FashionBlog.new("Sara Libby", '.post-body .separator', "http://www.saralibby.com/")
courtney = FashionBlog.new("What Courtney Wore", '.entry-content p', "http://thecourtneykerr.com/")
we_wore = FashionBlog.new("We Wore What", '.entry-content p', "http://weworewhat.com/")
song_style = FashionBlog.new("Song of Style", '.read-more p', "http://www.songofstyle.com/")

# i'm getting some links that aren't for photos for some of the sites, but the photos all end with .jpg
# when generating the random photos, should only use the array elements that end in .jpg
# except for still need to sanitize for courtney's signature


puts song_style.name
puts song_style.url
puts song_style.get_links

puts we_wore.name
puts we_wore.url
puts we_wore.get_links

puts courtney.get_links
puts sara_libby.get_links
puts sartorialist.get_links
puts atlantic.get_links
puts FashionBlog.all_blogs

# right now, the srape does not include the actual article link for each image that's scraped
# I could do that, but then there would have to be an associated between each image and each article, which
# I think really complicates things.  right now, all I really need is to generate all of the random
# images with the name of the blog and the blog url, which would be the same for all images for that
# particular blog, though from a UX perspective, if i were using this app and saw a photo I liked, I would
# probably want to click through and get the actual corresponding post for the purchase links, etc.
# kind of like what pinterest does





