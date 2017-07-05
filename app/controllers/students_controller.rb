class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = Student.find(params[:id])
  end

  def new
    # binding.pry
    # redirect_to student_path(@student)
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end


end
