module V1
    class Base < Grape::API
        version "v1"
        content_type :json, 'application/json'
        format :json
        formatter :json, Grape::Formatter::ActiveModelSerializers
    end
end