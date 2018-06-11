class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

    render :new
  end

  def create
    Student.create(student_params)

    redirect_to students_path
  end



  private
  # I can get access to mass assignment with the below method
  # I call this param unpacking
  def student_params
    params.permit(:first_name, :last_name)
  end



end
