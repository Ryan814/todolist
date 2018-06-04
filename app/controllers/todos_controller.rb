class TodosController < ApplicationController
	before_action :set_todo, :only => [:show, :edit, :update, :destroy]

	def index
		@todos = Todo.order(due_date: :asc)
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todos_url
		else
			render :new
		end
	end

	def show

	end

	def edit

	end

	def update
		if @todo.update_attributes(todo_params)
			redirect_to todo_path(@todo)
		else
			render :edit
		end
	end

	def destroy
		if @todo.can_destroy
				@todo.destroy
			redirect_to todos_url
		else
			flash[:alert] = 'Mission is overdue, can\'t be deleted!'
			redirect_to todos_url
		end
	end
	


	private

	def todo_params
		params.require(:todo).permit(:title, :due_date, :note)
	end

	def set_todo
		@todo = Todo.find(params[:id])
	end

end
