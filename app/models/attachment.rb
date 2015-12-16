class Attachment < ActiveRecord::Base

    belongs_to :topic
    belongs_to :reply

    mount_uploader :src, ImageUploader
end
