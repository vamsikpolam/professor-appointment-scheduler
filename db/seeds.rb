# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


s1 = Student.create!(name: 'Alice Allen', uid: 'U00123456', email: 'aallen@memphis.edu', password: 'software', password_confirmation: 'software')
s2 = Student.create!(name: 'Zigg Zag', uid: 'U00435234', email: 'zzz@memphis.edu', password: 'software', password_confirmation: 'software')

p1 = Professor.create!(name: 'Vamsi', uid: 'U00123123', email: 'vpolam@memphis.edu', password: 'software', password_confirmation: 'software')
p2 = Professor.create!(name: 'Tharun', uid: 'U00123124', email: 'tbjawada@memphis.edu', password: 'software', password_confirmation: 'software')
p3 = Professor.create!(name: 'Dr. Dasgupta', uid: 'U00123125', email: 'dasgupta@memphis.edu', password: 'software', password_confirmation: 'software')
p4 = Professor.create!(name: 'Dr. Wang', uid: 'U00123126', email: 'wang@memphis.edu', password: 'software', password_confirmation: 'software')
p5 = Professor.create!(name: 'Dr. Ali', uid: 'U00123127', email: 'ali@memphis.edu', password: 'software', password_confirmation: 'software')
p6 = Professor.create!(name: 'Dr. Subramanyam', uid: 'U00123128', email: 'sub@memphis.edu', password: 'software', password_confirmation: 'software')

d_cs = Department.create!(name: 'Computer Science')
d_cs.professors << p1 << p2

d_ee = Department.create!(name: 'Electrical Engineering')
d_ee.professors << p3 << p4

d_mis = Department.create!(name: 'Management Information ')
d_mis.professors << p5 << p6


e1 = Employee.create!(name: 'Carol Collins', uid: 'U00135790', email: 'ccollins@memphis.edu', password: 'software', password_confirmation: 'software')
e2 = Employee.create!(name: 'lyndsey', uid: 'U00135791', email: 'lyn@memphis.edu', password: 'software', password_confirmation: 'software')
e3 = Employee.create!(name: 'joyce', uid: 'U00135792', email: 'joyce@memphis.edu', password: 'software', password_confirmation: 'software')

d_ad = Department.create!(name: 'Graduate Admissions')
d_ad.employees << e1 << e2 << e3

a1 = Appointment.create!(start_time: "3-5-2016 2:00pm", status: "confirmed", reason: "Discuss Final Project")
a2 = Appointment.create!(start_time: "4-5-2016 2:00pm", status: "confirmed", reason: "Group discussion")
a3 = Appointment.create!(start_time: "4-5-2016 3:00pm", status: "confirmed", reason: "Research discussion")
a4 = Appointment.create!(start_time: "5-5-2016 2:30pm", status: "open", reason: "")
a5 = Appointment.create!(start_time: "5-5-2016 1:30pm", status: "open", reason: "")
a6 = Appointment.create!(start_time: "6-5-2016 1:30pm", status: "open", reason: "")
a7 = Appointment.create!(start_time: "7-5-2016 3:30pm", status: "open", reason: "")
a8 = Appointment.create!(start_time: "7-5-2016 9:30pm", status: "open", reason: "")

p1.appointments << a1 << a2 << a3 << a4 << a5 << a6 << a7 << a8
s1.appointments << a1
s2.appointments << a2
s1.appointments << a3


b1 = Appointment.create!(start_time: "3-5-2016 2:00pm", status: "confirmed", reason: "Discuss research")
b2 = Appointment.create!(start_time: "4-5-2016 2:00pm", status: "high", reason: "Discuss project")
b3 = Appointment.create!(start_time: "4-5-2016 3:00pm", status: "open", reason: "")
b4 = Appointment.create!(start_time: "5-5-2016 2:30pm", status: "open", reason: "")
b5 = Appointment.create!(start_time: "5-5-2016 12:30pm", status: "open", reason: "")

p2.appointments << b1 << b2 << b3 << b4 << b5
s1.appointments << b1
s2.appointments << b2

