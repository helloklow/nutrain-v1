class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :exercise, :reps, :sets, :status, :notes, :user_id
end
