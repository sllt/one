module V1
    class Users < Grape::API
        resource :users do
            desc "return a user by id"
            params do
                requires :id, type: Integer, desc: 'user id.'
            end
            route_param :id do
                get do
                    User.find params[:id]
                end
            end


            desc "return user's topics"
            params do
                requires :id, type: Integer, desc: 'user id.'
            end

            get
        end
    end
end