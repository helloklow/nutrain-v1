class User < ApplicationRecord
    has_secure_password

    has_many :meals
    has_many :workouts

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
end