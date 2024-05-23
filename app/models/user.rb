class User < ApplicationRecord
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: { in: 6..12 } 
    has_secure_password

    has_many :project_owners
    has_many :projects, through: :project_owners
end
