# == Schema Information
#
# Table name: appointments
#
#  id           :integer          not null, primary key
#  start_time   :datetime
#  reason       :text
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  professor_id :integer
#  employee_id  :integer
#  student_id   :integer
#

require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  # setup do
  #   @appointment = appointments(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:appointments)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create appointment" do
  #   assert_difference('Appointment.count') do
  #     post :create, appointment: { date: @appointment.date, reason: @appointment.reason, time: @appointment.time }
  #   end

  #   assert_redirected_to appointment_path(assigns(:appointment))
  # end

  # test "should show appointment" do
  #   get :show, id: @appointment
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @appointment
  #   assert_response :success
  # end

  # test "should update appointment" do
  #   patch :update, id: @appointment, appointment: { date: @appointment.date, reason: @appointment.reason, time: @appointment.time }
  #   assert_redirected_to appointment_path(assigns(:appointment))
  # end

  # test "should destroy appointment" do
  #   assert_difference('Appointment.count', -1) do
  #     delete :destroy, id: @appointment
  #   end

  #   assert_redirected_to appointments_path
  # end
end
