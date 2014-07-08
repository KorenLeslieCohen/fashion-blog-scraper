require 'nokogiri'
require 'rubygems'
require 'open-uri'
require 'cgi'
require 'uri'
# require 'pry'

class FashionBlog

  attr_accessor :name, :post, :url, :image_links, :all_image_links, :jpg_links, :src_jpg_links, :facebook, :twitter, :instagram

  ALL_BLOGS = []

  def initialize(name, post, url, facebook=nil, twitter=nil, instagram=nil)
    @name = name
    @post = post
    @url = url
    @facebook = facebook
    @twitter = twitter
    @instagram = instagram
    @image_links = []
    @all_image_links = []
    @jpg_links = []
    @src_jpg_links = []
    ALL_BLOGS << self
  end

  # a href images
  def get_links
    doc = Nokogiri::HTML(open(url))
    to_scrape = doc.css(post)
    image_links = to_scrape.xpath('a')
    all_image_links << image_links.map {|link| link["href"]}.compact
    all_image_links.each do |inner_array|
      inner_array.each do |link|
        # binding.pry
        jpg_links << link if link.include?(".jpg")
        jpg_links << link if link.include?(".jpeg")
        jpg_links << link if link.include?(".JPG")
        jpg_links << link if link.include?(".JPEG")
      end
    end
    if jpg_links.count > 10
      jpg_links[0..9]
    else
      jpg_links
    end
  end

  # img src images
  def get_links_img
    doc = Nokogiri::HTML(open(url))
    to_scrape = doc.css(post)
    image_links = to_scrape.xpath('img')
    all_image_links << image_links.map {|link| link["src"]}.compact
    all_image_links.each do |inner_array|
      inner_array.each do |link|
        # binding.pry
        src_jpg_links << link unless (link.include?("smilies") || link.include?("gumball"))
      end
    end
    if src_jpg_links.count > 10
      src_jpg_links[0..9]
    else
      src_jpg_links
    end
  end

  def self.all_blogs
    ALL_BLOGS
  end

end
 





