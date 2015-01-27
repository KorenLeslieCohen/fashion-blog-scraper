require_relative 'config/environment'
require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    @atlantic = FashionBlog.new("Atlantic-Pacific", '.post-body .separator', "http://atlantic-pacific.blogspot.com", "http://facebook.com/atlanticpacificblog", "http://twitter.com/BlairEadieBEE", "http://instagram.com/blaireadiebee")
    # @sartorialist = FashionBlog.new("The Sartorialist", '.article-content p', "http://www.thesartorialist.com/")
    # @sara_libby = FashionBlog.new("Sara Libby", '.post-body .separator', "http://www.saralibby.com/")
    # @courtney = FashionBlog.new("What Courtney Wore", '.entry-content p', "http://thecourtneykerr.com/")
    @we_wore = FashionBlog.new("We Wore What", '.entry-content p', "http://weworewhat.com/", "http://www.facebook.com/pages/We-Wore-What/122885757817444", "http://twitter.com/WeWoreWhat", "http://instagram.com/weworewhat")
    @lace = FashionBlog.new("Lace & Locks", '.entry p a', "http://laceandlocks.com/", "http://facebook.com/laceandlocks", "http://twitter.com/laceandlocks", "http://instagram.com/laceandlocks")
    # @song_style = FashionBlog.new("Song of Style", '.read-more p', "http://www.songofstyle.com/")
    @sea_of_shoes = FashionBlog.new("Sea of Shoes", ".post_content p", "http://www.seaofshoes.com/", "http://www.facebook.com/SeaofShoes", "http://twitter.com/sea_of_shoes", "http://instagram.com/seaofshoes")
    @wendy_lookbook = FashionBlog.new("Wendy's Lookbook", '.wlb_image_preview a', "http://www.wendyslookbook.com/", "http://www.facebook.com/wendyslookbook", "http://twitter.com/wendynguyen", "http://instagram.com/wendyslookbook")
    # @le_fashion = FashionBlog.new("le Fashion", '.post-body', "http://www.lefashionimage.blogspot.com/")
    @gal = FashionBlog.new("Gal Meets Glam", '.featured-images a', "http://galmeetsglam.com/", "http://www.facebook.com/pages/Gal-Meets-Glam/232455260104990", "http://twitter.com/GalMeetsGlam", "http://instagram.com/juliahengel")
    # @pink_horror = FashionBlog.new("Pink Horrorshow", '.separator', "http://www.pinkhorrorshow.com/")
    # @trop = FashionBlog.new("Trop Rouge", '.post-body', "http://troprouge.blogspot.com/")
    # @jag = FashionBlog.new("Jag Lever", '.entry-content p', "http://www.jaglever.com/")
    # @indie = FashionBlog.new("Fashion Indie", ".image a", "http://fashionindie.com/")
    # @cupcakes = FashionBlog.new("Cupcakes and Cashmere", '.embedded-Media-image', "http://cupcakesandcashmere.com/")
    @toast = FashionBlog.new("Fashiontoast", '.copy p', "http://fashiontoast.com/", "http://www.facebook.com/fashiontoast", "http://twitter.com/rumineely", "http://instagram.com/rumineely")
    # @marcy = FashionBlog.new("The Marcy Stop", '.separator', "http://www.themarcystop.com/")
    @navy = FashionBlog.new("Something Navy", '.cb-excerpt p', "http://www.somethingnavy.com/", "http://www.facebook.com/pages/SomethingNavy/108772859186758?ref=ts&fref=ts", "http://twitter.com/something_navy", "http://instagram.com/somethingnavy")
    @viva = FashionBlog.new("Viva Luxury", '.separator a', "http://vivaluxury.blogspot.com", "http://www.facebook.com/pages/VivaLuxury-Style-Blog/191566214200570", "http://twitter.com/vivaluxury", "http://instagram.com/vivaluxuryblog")
    @zoranna = FashionBlog.new("Zoranna", '.post-body a', "http://www.zorannah.com/", "http://www.facebook.com/zorannahsfashioncorner", "http://twitter.com/Zorannah", "http://instagram.com/zorannah")
    erb :"index.html"
  end

  get '/terms' do
    erb :"terms.html"
  end

end

