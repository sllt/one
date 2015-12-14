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

            desc "user login"
            params do
                requires :email, type: String, desc: 'user email.'
                requires :password, type: String, desc: 'user password.'
            end
            post do
                user = User.find_by(email: params[:email])
                if user && user.authenticate(params[:password])
                    log_in user
                    user
                end
            end

        end
    end
end