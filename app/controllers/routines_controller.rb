class RoutinesController < ApplicationController
  
    def index
      @routine = Routine.order("created_at").last
    end

    def random
      @routine = Routine.order("RANDOM()").first
    end

    def new
      @routine = Routine.new
    end

     def create
      @routine = Routine.create(routine_params)
      if @routine.invalid?
        flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
      end
        redirect_to :controller => 'routines', :action => 'index'
    end

    def routine_params
      params.require(:routine).permit(:title, :description)
    end

end