module V1
    module Helpers

        def session
            env[Rack::Session::Abstract::ENV_SESSION_KEY]
        end

        def current_user
            @current_user ||= User.find_by(id: session[:user_id])
        end

        def log_in(user)
            session[:user_id] = user.id
        end

        def log_out
            session.delete(:user_id)
            @current_user = nil
        end
        
        def logged_in?
            !current_user.nil?
        end

        def remember(user)
            user.remember
            cookies[:token] = {
                value: user.remember_token
            }
        end
    end
end