class User < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 15 }
    
    validates :email, presence: true, length: { maximum: 50 },
        format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
        uniqueness: true

    validates :password, length: { minimum: 6 }

    before_save { self.email = self.email.downcase }

    has_secure_password

    has_many :topics
    has_many :replies
end
