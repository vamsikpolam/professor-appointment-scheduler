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

class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        if professor_signed_in?
          format.html { redirect_to current_professor, notice: 'Appointment was successfully created.' }
          @appointment.professor = current_professor
        elsif employee_signed_in?
          format.html { redirect_to current_employee, notice: 'Appointment was successfully created.' }
          @appointment.employee = current_employee
        end
        @appointment.status = "open"
        @appointment.save!
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to home_path, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
        ## if status = open, appointment was cancelled by student or professor
        ## if status = low or high, appointment was requested by student
        ## if status = confirmed, appointment was accepted by professor
        ReqappMailer.app_conformation.deliver_now
        if @appointment.status == "low" or @appointment.status == "high"
          @appointment.student = current_student
        elsif @appointment.status == "open"
          @appointment.student = nil
        end
        @appointment.save!
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      if professor_signed_in?
        format.html { redirect_to current_professor, notice: 'Appointment was successfully destroyed.' }
      elsif employee_signed_in?
        format.html { redirect_to current_employee, notice: 'Appointment was successfully destroyed.' }
      end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:start_time, :status, :reason)
    end
end
