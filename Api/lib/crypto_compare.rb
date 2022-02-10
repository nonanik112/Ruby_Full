module Api
  class CryptoCompare < Base
    def request
      super(:get, url)
    end

    def parsed_response(response)
      response.dig('USD').to_f
    end

    def url
      # pair = @options.fetch(:pair, 'usd')
      # "https://api.coingecko.com/api/v3/coins/#{options[:name]}"
      # "https://api.coinpaprika.com/v1/coins/#{options[:symbol]}-#{options[:name]}/ohlcv/today"
      # "https://api.coincap.io/v2/assets/#{options[:name]}"
      "https://main-api.cryptocompare.com/data/price?fsym=#{options[:symbol]}&tsyms=usd"
      # "https://api.coinbase.com/v2/"
    end
  end
end
