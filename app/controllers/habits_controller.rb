class HabitsController < ApplicationController
  def index
    @habits = Habit.all
  end

  def show
    @habit = Habit.find(params["id"])
  end

  def edit
    @habit = Habit.find(params["id"])
  end

  def update
    habit_params = params["habit"].permit("title", "description", "category", "date")
    habit = Habit.find(params["id"])
    habit.update(habit_params)
    redirect_to(habit_path(habit))
  end

  def create    
    habit_params = params["habit"].permit("title", "description", "category", "date")
    habit = Habit.create(habit_params)
    redirect_to(habit_path(habit))
  end

  def destroy
    @habit = Habit.find(params["id"])
    @habit.destroy
    redirect_to(habits_path)
  end
end
