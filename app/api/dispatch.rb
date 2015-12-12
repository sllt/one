require 'grape-swagger'

module Api
  class Dispatch < Grape::API
    use ActionDispatch::RemoteIp

    mount V1::Base

    format :json
    content_type :json, 'application/json;charset=utf-8'

    route :any, '*path' do
      status 404
      { error: 'Page not found.' }
    end

    add_swagger_documentation
  end
end