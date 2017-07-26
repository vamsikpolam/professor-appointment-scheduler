class AddProfessorRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :professor, index: true, foreign_key: true
  end
end
