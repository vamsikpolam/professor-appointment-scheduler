class AddDepartmentRefToProfessors < ActiveRecord::Migration
  def change
    add_reference :professors, :department, index: true, foreign_key: true
  end
end
