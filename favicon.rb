require "rubygems"
require "sinatra"
require "nokogiri"
require "open-uri"

 
get '/' do
    url = "http://www.wikipedia.org"
    doc = Nokogiri::HTML(open(url))
    icon = doc.search("link[@rel='shortcut icon']") | doc.search("link[@rel='icon']")
    @icon_urls = icon.map {|i| i.attributes["href"].value()}

end




