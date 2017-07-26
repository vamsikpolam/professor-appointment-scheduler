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

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @professor = professors(:one)
  end

  test "professor should be valid" do
    assert @professor.valid?
  end

  test "professor name should be present" do
    @professor.name = ""
    assert @professor.invalid?
  end

  test "professor name should not be blank" do
    @professor.name = "   "
    assert @professor.invalid?
  end

  test "professor Uid should be valid" do
    assert @professor.valid?
  end

  test "professor Uid should be invalid" do
    @professor.uid = "u00"
    assert @professor.invalid?
  end

end
