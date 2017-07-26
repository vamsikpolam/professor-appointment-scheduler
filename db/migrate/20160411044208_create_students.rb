class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :uid
      t.text :description

      t.timestamps null: false
    end
  end
end
