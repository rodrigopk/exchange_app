require 'exchange_rate'
include ExchangeRate

# for deployment on heroku
ExchangeRate.set_cache_uri(Rails.root.to_s+"/tmp/rates.xml")