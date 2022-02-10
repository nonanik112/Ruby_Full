module Api
  class CoinCap < Base
    def request
      super(:get, url)
    end

    def parsed_response(response)
      response.dig('data', 'priceUsd').to_f
    end

    def url
      # pair = @options.fetch(:pair, 'usd')
      # "https://api.coingecko.com/api/v3/coins/#{options[:name]}"
      # "https://api.coinpaprika.com/v1/coins/#{options[:symbol]}-#{options[:name]}/ohlcv/today"
       "https://api.coincap.io/v2/assets/#{options[:name]}"
      # "https://api.coinbase.com/v2/"
    end
  end
end
