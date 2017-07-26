# == Schema Information
#
# Table name: professors
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

class ProfessorsControllerTest < ActionController::TestCase
  # setup do
  #   @professor = professors(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:professors)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create professor" do
  #   assert_difference('Professor.count') do
  #     post :create, professor: { description: @professor.description, name: @professor.name, uid: @professor.uid }
  #   end

  #   assert_redirected_to professor_path(assigns(:professor))
  # end

  # test "should show professor" do
  #   get :show, id: @professor
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @professor
  #   assert_response :success
  # end

  # test "should update professor" do
  #   patch :update, id: @professor, professor: { description: @professor.description, name: @professor.name, uid: @professor.uid }
  #   assert_redirected_to professor_path(assigns(:professor))
  # end

  # test "should destroy professor" do
  #   assert_difference('Professor.count', -1) do
  #     delete :destroy, id: @professor
  #   end

  #   assert_redirected_to professors_path
  # end
end
