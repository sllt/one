module V1
    class Base < Grape::API
        version "v1"
        content_type :json, 'application/json'
        format :json
        formatter :json, Grape::Formatter::ActiveModelSerializers

        helpers V1::Helpers
        
        mount V1::Users
        mount V1::Topics
        mount V1::Replies
    end
end