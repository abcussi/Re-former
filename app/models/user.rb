class User < ApplicationRecord
    validates :username, presence:true, uniqueness:true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    validates :email, uniqueness: true, presence: true, format: { with: VALID_EMAIL_REGEX }
    validates :password, presence:true, length:(minimum: 5, maximum: 20)
end
