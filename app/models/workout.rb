class Workout < ApplicationRecord
    belongs_to :user

    validates :date, :exercise, :reps, :sets, presence: true
end
