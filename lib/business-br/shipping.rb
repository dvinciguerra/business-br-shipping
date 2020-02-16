# frozen_string_literal: true

require 'http'
require 'json'

require 'business-br/shipping/version'

module Business
  module BR
    module Shipping
      class << self
        API_HOST = ENV['API_HOST'] || 'https://api.postmon.com.br/v1/rastreio/'
        API_PROVIDER = ENV['API_PROVIDER'] || 'ect'

        def tracking(shipping_code)
          return nil unless shipping_code

          response = HTTP.get("#{API_HOST}/#{API_PROVIDER}/#{shipping_code}")
          payload = JSON.parse(response.body.to_s)

          code, provider, activities = payload.values_at('codigo', 'servico', 'historico')

          {
            code: code,
            provider: provider,
            activities: activities_serializer(activities)
          }
        end

        private

        def activities_serializer(activities)
          activities.map do |activity|
            location, date, status, description = activity.values_at(
              'local', 'data', 'situacao', 'detalhes'
            )

            { location: location, date: date, status: status, description: description }
          end
        end
      end
    end
  end
end
