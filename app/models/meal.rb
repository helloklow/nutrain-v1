class Meal < ApplicationRecord
    belongs_to: user

    validates :date, :meal, :nutrition, presence: true
end
