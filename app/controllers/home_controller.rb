class HomeController < ApplicationController

require 'json'
require 'open-uri'
require 'rest-client'
require 'json'


def index

 base_url = "https://blockchain.info/ticker"
 response = RestClient.get base_url
 data = JSON.load response
 cool = data["USD"].first
 @btc_price = JSON.pretty_generate cool
 @btc_usd = @btc_price[12..20].to_d


 a = DateTime.new(2017, 12, 22)
 b = DateTime.new(2027, 12, 22)
 @days_left = (b - a).to_i

end

def ticker

end
end
