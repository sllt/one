module V1
    class Base < Grape::API
        version "v1"
        content_type :json, 'application/json'
        format :json
        formatter :json, Grape::Formatter::ActiveModelSerializers

        mount V1::Users
    end
end