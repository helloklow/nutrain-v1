class Api::V1::WorkoutsController < ApplicationController
    before_action :set_workout, only: [:show, :update, :destroy]
    
    # GET /workouts
    def index
        #if logged_in?
            @workouts = Workout.all
            #@workouts = current_user.workouts
            render json: WorkoutSerializer.new(@workouts)
        # else 
        #     render json: {
        #         error: "Must be logged in to view workouts"
        #     }
        # end
    end
    
    # GET /workouts/1
    def show
        workout_json = WorkoutSerializer.new(@workout)
        render json: workout_json
    end
    
    # POST /workouts
    def create
        @workout = current_user.workouts.build(workout_params)
        if @workout.save
            render json: WorkoutSerializer.new(@workout), status: :created
        else
            resp = {
                error: @workout.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /workouts/1
    def update
        if @workout.update(workout_params)
            render json:  WorkoutSerializer.new(@workout), status: :ok
        else
            resp = {
                error: @workout.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    # DELETE /workouts/1
    def destroy
        if @workout.destroy
            render json:  {message: "Workout successfully destroyed"}, status: :ok
        else
            resp = {
                error: "Workout could not be found and was not destroyed"
            }
            render json: resp, status: :unprocessable_entity
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
        @workout = Workout.find(params[:id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def workout_params
        params.require(:workout).permit(:date, :exercise, :reps, :sets, :status, :notes, :user_id)
    end
end
