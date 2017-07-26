# == Schema Information
#
# Table name: employees
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
#  department_id          :integer
#

require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  # setup do
  #   @employee = employees(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:employees)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create employee" do
  #   assert_difference('Employee.count') do
  #     post :create, employee: { description: @employee.description, name: @employee.name, uid: @employee.uid }
  #   end

  #   assert_redirected_to employee_path(assigns(:employee))
  # end

  # test "should show employee" do
  #   get :show, id: @employee
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @employee
  #   assert_response :success
  # end

  # test "should update employee" do
  #   patch :update, id: @employee, employee: { description: @employee.description, name: @employee.name, uid: @employee.uid }
  #   assert_redirected_to employee_path(assigns(:employee))
  # end

  # test "should destroy employee" do
  #   assert_difference('Employee.count', -1) do
  #     delete :destroy, id: @employee
  #   end

  #   assert_redirected_to employees_path
  # end
end
