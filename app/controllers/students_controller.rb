class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
      @student = Student.find_by(id:params[:id])
      if @student 
        render "show"
      else
        redirect_to students_path
      end
  end

  def new
  
end

def create
  Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  redirect_to students_path
end

end
