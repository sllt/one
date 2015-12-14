class User < ActiveRecord::Base
    attr_accessor :remember_token
    validates :name, presence: true, length: { maximum: 15 }
    
    validates :email, presence: true, length: { maximum: 50 },
        format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
        uniqueness: true

    validates :password, length: { minimum: 6 }

    before_save { self.email = self.email.downcase }

    has_secure_password

    has_many :topics
    has_many :replies

    def self.new_token
        SecureRandom.urlsafe_base64
    end

    def self.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

end
