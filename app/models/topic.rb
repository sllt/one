class Topic < ActiveRecord::Base

    belongs_to :user
    default_scope -> { order(created_at: :desc) }

    has_many :replies, dependent: :destroy
    has_many :attachments, dependent: :destroy
end
