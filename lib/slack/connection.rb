require 'faraday_middleware'
Dir[File.expand_path('../../faraday/*.rb', __FILE__)].each{|f| require f}

module Slack
  # @private
  module Connection
    private

    def connection
      options = {
        :headers => {'Accept' => "application/json; charset=utf-8", 'User-Agent' => user_agent},
        :proxy => proxy,
        :url => endpoint,
      }

      Faraday::Connection.new(options) do |connection|
        connection.use Faraday::Request::Multipart
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::ParseJson
        connection.use FaradayMiddleware::RaiseHttpException
        connection.adapter(adapter)
        connection.request :authorization, 'Bearer', token
      end
    end
  end
end
