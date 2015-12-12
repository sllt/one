class Attachment < ActiveRecord::Base

    belongs_to :topic
    belongs_to :reply
end
