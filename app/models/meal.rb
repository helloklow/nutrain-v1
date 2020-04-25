class Meal < ApplicationRecord
    belongs_to :user

    validates :date, :meal, presence: true
end
