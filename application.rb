require_relative 'config/environment'
require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    @blogs = {  :atlantic => FashionBlog.new("Atlantic-Pacific", '.post-body .separator', "http://atlantic-pacific.blogspot.com", "http://facebook.com/atlanticpacificblog", "http://twitter.com/BlairEadieBEE", "http://instagram.com/blaireadiebee", "get_links"),
                :we_wore => FashionBlog.new("We Wore What", '.entry-content p', "http://weworewhat.com/", "http://www.facebook.com/pages/We-Wore-What/122885757817444", "http://twitter.com/WeWoreWhat", "http://instagram.com/weworewhat", "get_links"),
                :lace => FashionBlog.new("Lace & Locks", '.entry p a', "http://laceandlocks.com/", "http://facebook.com/laceandlocks", "http://twitter.com/laceandlocks", "http://instagram.com/laceandlocks", "get_links_img"),
                :sea_of_shoes => FashionBlog.new("Sea of Shoes", ".post_content p", "http://www.seaofshoes.com/", "http://www.facebook.com/SeaofShoes", "http://twitter.com/sea_of_shoes", "http://instagram.com/seaofshoes", "get_links"),
                # :wendy_lookbook => FashionBlog.new("Wendy's Lookbook", '.gumballv_wrapper a', "http://www.wendyslookbook.com/", "http://www.facebook.com/wendyslookbook", "http://twitter.com/wendynguyen", "http://instagram.com/wendyslookbook", "get_links_img"),
                :gal => FashionBlog.new("Gal Meets Glam", '.featured-images a', "http://galmeetsglam.com/", "http://www.facebook.com/pages/Gal-Meets-Glam/232455260104990", "http://twitter.com/GalMeetsGlam", "http://instagram.com/juliahengel", "get_links_img"),
                :navy => FashionBlog.new("Something Navy", '.pibfi_pinterest', "http://www.somethingnavy.com/", "http://www.facebook.com/pages/SomethingNavy/108772859186758?ref=ts&fref=ts", "http://twitter.com/something_navy", "http://instagram.com/somethingnavy", "get_links_img"),
                :viva => FashionBlog.new("Viva Luxury", '.separator a', "http://vivaluxury.blogspot.com", "http://www.facebook.com/pages/VivaLuxury-Style-Blog/191566214200570", "http://twitter.com/vivaluxury", "http://instagram.com/vivaluxuryblog", "get_links_img"),
                :zoranna => FashionBlog.new("Zoranna", '.post-body a', "http://www.zorannah.com/", "http://www.facebook.com/zorannahsfashioncorner", "http://twitter.com/Zorannah", "http://instagram.com/zorannah", "get_links_img"),
                :toast => FashionBlog.new("Fashiontoast", '.td-module-thumb a', "http://fashiontoast.com/", "http://www.facebook.com/fashiontoast", "http://twitter.com/rumineely", "http://instagram.com/rumineely", "get_links_img")
    }

    erb :"index.html"
  end

  get '/terms' do
    erb :"terms.html"
  end

end

