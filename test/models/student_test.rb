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

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	def setup
		@student = students(:one)
	end

  test "student should be valid" do
    assert @student.valid?
  end

  test "student name should be present" do
    @student.name = ""
    assert @student.invalid?
  end

  test "student name should not be blank" do
    @student.name = "   "
    assert @student.invalid?
  end

  test "student Uid should be valid" do
    assert @student.valid?
  end

  test "student Uid should be invalid" do
    @student.uid = "u00"
    assert @student.invalid?
  end

end
