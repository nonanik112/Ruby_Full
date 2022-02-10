module Api
  class Coinbase < Base
    def request
      super(:get, url)
    end
    
    def parsed_response(response)
      response.dig('data', 'amount')
    end

    def url
      pair = @options.fetch(:pair, 'usd')
      "https://api.coinbase.com/v2/prices/#{@options[:symbol]}-#{pair}/spot"
      # "https://api.coinbase.com/v2/"
    end
  end
end
