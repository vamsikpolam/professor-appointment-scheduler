# == Schema Information
#
# Table name: students
#
#  id                     :integer          not null, primary key
#  name                   :string
#  uid                    :string
#  description            :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  # setup do
  #   @student = students(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:students)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create student" do
  #   assert_difference('Student.count') do
  #     post :create, student: { description: @student.description, name: @student.name, uid: @student.uid }
  #   end

  #   assert_redirected_to student_path(assigns(:student))
  # end

  # test "should show student" do
  #   get :show, id: @student
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @student
  #   assert_response :success
  # end

  # test "should update student" do
  #   patch :update, id: @student, student: { description: @student.description, name: @student.name, uid: @student.uid }
  #   assert_redirected_to student_path(assigns(:student))
  # end

  # test "should destroy student" do
  #   assert_difference('Student.count', -1) do
  #     delete :destroy, id: @student
  #   end

  #   assert_redirected_to students_path
  # end
end
