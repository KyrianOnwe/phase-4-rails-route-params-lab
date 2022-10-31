class StudentsController < ApplicationController

  def index(*arg)
    # students = Student.all
    # render json: students
    # find = Student.find_by(first_name: params[:word] || last_name: params[:word])
    if arg.length == 0
      students = Student.all
      render json: students      
    else
      student = Student.find_by(first_name: params[:arg] || last_name: params[:arg])
      render json: student      
    end    
  end

  def which
    student =  Student.find(params[:id])
    render json: student
  end

end
