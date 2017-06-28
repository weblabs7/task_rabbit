class TasksController < ApplicationController
    
    def index
    end
    
    def create
        @task = Task.new
    end
    
end
