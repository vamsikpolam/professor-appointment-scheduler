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

class Appointment < ActiveRecord::Base
	belongs_to :professor
	belongs_to :employee
  belongs_to :student
end
