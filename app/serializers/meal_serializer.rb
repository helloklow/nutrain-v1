class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meal, :ingredients, :nutrition, :notes, :target, :user_id
end
