module V1
    class Replies < Grape::API
        resource :replies do
            desc "return replies by topic id."
            params do
                requires :topic_id, type: Integer, desc: "topic id."
            end
            get do
                Topics.find(params[:topic_id]).replies
            end
        end
    end
end