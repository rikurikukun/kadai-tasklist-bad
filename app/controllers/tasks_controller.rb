class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = 'Taskが正常に投稿されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task が投稿されませんでした'
      render :new
    end 
  end 
  
  def index
     @tasks=Task.all
  end 
  
  def show
    @task = Task.find(params[:id])
  end
   
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    flash[:success] = 'Task は正常に削除されました'
    redirect_to tasks_url
  end
  
  def edit
     @message = Message.find(params[:id])
  end
  
  def new
     @task = Task.new
  end
  
  def update
  end

 private

  
  def task_params
    params.require(:task).permit(:content)
  end

end

