class Reply < ActiveRecord::Base
    
    belongs_to :topic
    belongs_to :user

    has_many :attachments
end
