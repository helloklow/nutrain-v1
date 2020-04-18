class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :exercise, :reps, :sets, :status, :notes
end
