class TasksController < ApplicationController
    before_action :find_task, only:[:show, :edit, :update, :destroy]
    
    def index
    end
    
    def show
    end
    
    def create
        @task = Task.new(tasks_params)
        
        if @task.save
            redirect_to @task
        else
            render 'New'
        end
    end
    
    def new
        @task = Task.new
        
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def tasks_params
        params_require(:task).permit(:title, :description, :company, :url)
    end
    
    def find_task
        @task = Task.find(params[:id])
    end
end
