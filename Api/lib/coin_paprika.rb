module Api
  class CoinPaprika < Base
    def request
      super(:get, url)
    end

    def parsed_response(response)
      response.first.dig('close').to_f
    end

    def url
      # pair = @options.fetch(:pair, 'usd')
      # "https://api.coingecko.com/api/v3/coins/#{options[:name]}"
      "https://api.coinpaprika.com/v1/coins/#{@options[:symbol]}-#{@options[:name]}/ohlcv/today"
      # "https://api.coinbase.com/v2/"
    end
  end
end
