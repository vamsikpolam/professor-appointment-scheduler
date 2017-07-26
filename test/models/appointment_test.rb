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

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
