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
            post :login do
                user = User.find_by(email: params[:email])
                if user && user.authenticate(params[:password])
                    log_in user
                    remember user
                    user
                end
            end

            desc "user logout"
            params do

            end
            post :logout do
                if logged_in?
                    log_out
                end
            end


        end
    end
end