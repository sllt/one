module V1
    class Topics < Grape::API
        resource :topics do
            desc "return new topics"
            params do
                optional :offset, type: Integer, default: 0, desc: "ofsset"
                optional :limit, type: Integer, default: 10, desc: "limit"
            end

            get :latest do
                Topics.order("created_at DESC").offset(params[:offset]).limit(params[:limit])
            end


            desc "create topic"
            params do
                requires :content, type: String, desc: "topic content."
            end
            post do
                current_user.topics.new(content: params[:content])
            end

            desc "destroy topic"
            params do
                requires :topic_id, type: Integer, desc: "topic id."
            end
            delete do
                Topic.find(params[:topic_id]).destroy
            end
        end
    end
end