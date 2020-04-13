class User < ApplicationRecord
    has_secure_password

    has_many :meals
    has_many :workouts

    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
