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


 a = DateTime.now
 b = DateTime.new(2027, 12, 27)
 @days_left = (b - a).to_i


 @percent_richer = ((@btc_usd - 14700) / 14700)
 @total_richer = (@percent_richer * 1000).to_d


@jack_bet_price = (@btc_usd * 0.068)

end

def ticker

end
end
