require_relative 'config/environment'
require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    @atlantic = FashionBlog.new("Atlantic-Pacific", '.post-body .separator', "http://atlantic-pacific.blogspot.com")
    @sartorialist = FashionBlog.new("The Sartorialist", '.article-content p', "http://www.thesartorialist.com/")
    @sara_libby = FashionBlog.new("Sara Libby", '.post-body .separator', "http://www.saralibby.com/")
    # @courtney = FashionBlog.new("What Courtney Wore", '.entry-content p', "http://thecourtneykerr.com/")
    @we_wore = FashionBlog.new("We Wore What", '.entry-content p', "http://weworewhat.com/")
    @song_style = FashionBlog.new("Song of Style", '.read-more p', "http://www.songofstyle.com/")
    @sea_of_shoes = FashionBlog.new("Sea of Shoes", ".post_content p", "http://www.seaofshoes.com/")
    # @wendy_lookbook = FashionBlog.new("Wendy's Lookbook", 'wlb_image_preview', "http://www.wendyslookbook.com/")
    @le_fashion = FashionBlog.new("le Fashion", '.post-body', "http://www.lefashionimage.blogspot.com/")
    @pink_horror = FashionBlog.new("Pink Horrorshow", '.separator', "http://www.pinkhorrorshow.com/")
    # @trop = FashionBlog.new("Trop Rouge", '.post-body', "http://troprouge.blogspot.com/")
    # @jag = FashionBlog.new("Jag Lever", '.entry-content p', "http://www.jaglever.com/")
    erb :"index.html"
  end

  get '/terms' do
    erb :"terms.html"
  end

end

