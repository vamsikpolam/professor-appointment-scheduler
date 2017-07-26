class StaticPagesController < ApplicationController
  def home
    if student_signed_in?
      @user = current_student
      @user_type = "Student"
    elsif professor_signed_in?
      @user = current_professor
      @user_type = "Professor"
    elsif employee_signed_in?
      @user = current_employee
      @user_type = "Employee"
    else
      redirect_to login_path
    end
  end

  def login
    if student_signed_in?
      redirect_to home_path
    end
  end
 
end
