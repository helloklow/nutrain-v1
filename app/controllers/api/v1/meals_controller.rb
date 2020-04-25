class Api::V1::MealsController < ApplicationController
    before_action :set_meal, only: [:show, :update, :destroy]
    
    # GET /meals
    def index
        #if logged_in?
            @meals = Meal.all
            #@meals = current_user.meals
            render json: MealSerializer.new(@meals)
        #else 
            # render json: {
            #     error: "Must be logged in to view meals"
            # }
        #end
    end
    
    # GET /meals/1
    def show
        meal_json = MealSerializer.new(@meal)
        render json: meal_json
    end
    
    # POST /meals
    def create
        @meal = current_user.meals.build(meal_params)
        if @meal.save
            render json: MealSerializer.new(@meal), status: :created
        else
            resp = {
                error: @meal.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /meals/1
    def update
        if @meal.update(meal_params)
            render json:  MealSerializer.new(@meal), status: :ok
        else
            resp = {
                error: @meal.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    # DELETE /flights/1
    def destroy
        if @meal.destroy
            render json:  {message: "Meal successfully destroyed"}, status: :ok
        else
            resp = {
                error: "Meal could not be found and was not destroyed"
            }
            render json: resp, status: :unprocessable_entity
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
        @meal = Meal.find(params[:id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def meal_params
        params.require(:meal).permit(:date, :meal, :ingredients, :nutrition, :notes, :target, :user_id)
    end
end
