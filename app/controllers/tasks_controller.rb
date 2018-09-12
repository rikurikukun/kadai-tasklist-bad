class TasksController < ApplicationController
  def create
  end 
  
  def index
     @tasks=Task.all
  end 
  
  def show
    @task = Task.find(params[:id])
  end
   
  def destroy
  end
  
  def edit
  end
  
  def new
  end
  
  def update
  end 
end
