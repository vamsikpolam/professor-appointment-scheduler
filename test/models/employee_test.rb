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

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @employee = employees(:one)
  end

  test "employee should be valid" do
    assert @employee.valid?
  end

  test "employee name should be present" do
    @employee.name = ""
    assert @employee.invalid?
  end

  test "employee name should not be blank" do
    @employee.name = "   "
    assert @employee.invalid?
  end

  test "employee Uid should be valid" do
    assert @employee.valid?
  end

  test "employee Uid should be invalid" do
    @employee.uid = "u00"
    assert @employee.invalid?
  end

end
