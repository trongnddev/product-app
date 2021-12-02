class User < ApplicationRecord
    has_secure_password
    validates :email, presence:true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "must be a valid email address"}
    validates :phone, presence: true, uniqueness: true, format: { with: /\A\d{9}\z/}
    validates :password, length: {minimum:6}
    validates :birthday, presence: true
end
