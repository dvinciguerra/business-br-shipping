#!ruby
# frozen_string_literal: true

require 'http'
require 'json'

API_HOST = ENV['API_HOST'] || 'https://api.postmon.com.br/v1/rastreio/'
API_PROVIDER = ENV['API_PROVIDER'] || 'ect'

codigo = '[PUT_YOUR_CODE_HERE]'

response = HTTP.get("#{API_HOST}/#{API_PROVIDER}/#{codigo}")
payload = JSON.parse(response.body.to_s)

pp payload

def activities_serializer(activities)
  activities.map do |activity|
    location, date, status, description = activity.values_at(
      'local', 'data', 'situacao', 'detalhes'
    )

    { location: location, date: date, status: status, description: description }
  end
end

code, provider, activities = payload.values_at('codigo', 'servico', 'historico')

entity = {
  code: code,
  provider: provider,
  activities: activities_serializer(activities)
}

pp entity
