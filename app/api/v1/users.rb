module V1
    class Users < Grape::API
        resource :users do
            desc "return a user by id"
            params do
                requires :id, type: Integer, desc: 'Status id.'
            end
            route_param :id do
                get do
                    User.find params[:id]
                end
            end
        end
    end
end