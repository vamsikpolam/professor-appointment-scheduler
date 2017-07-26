class AddStudentRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :student, index: true, foreign_key: true
  end
end
