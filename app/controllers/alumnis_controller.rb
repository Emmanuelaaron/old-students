class AlumnisController < ApplicationController
  before_action :authenticate_user!, except: %i[new create welcome]
  def welcome
    @summaries = {}

    @summaries['Diploma in Electrical Engineering'] = {}
    @summaries['Diploma in Electrical Engineering']['total'] = Alumni.dip_in_electrical.count
    @summaries['Diploma in Electrical Engineering']['link'] = alumniss_electrical_path

    @summaries['Diploma in Water Engineering'] = {}
    @summaries['Diploma in Water Engineering']['total'] = Alumni.dip_in_water.count
    @summaries['Diploma in Water Engineering']['link'] = alumniss_water_path

    @summaries['Diploma in Mechanical Engineering'] = {}
    @summaries['Diploma in Mechanical Engineering']['total'] = Alumni.dip_in_mechanical.count
    @summaries['Diploma in Mechanical Engineering']['link'] = alumniss_mechanical_path

    @summaries['Diploma in Architecture'] = {}
    @summaries['Diploma in Architecture']['total'] = Alumni.dip_in_architecture.count
    @summaries['Diploma in Architecture']['link'] = alumniss_architecture_path

    @summaries['Diploma in Civil Engineering'] = {}
    @summaries['Diploma in Civil Engineering']['total'] = Alumni.dip_in_civil.count
    @summaries['Diploma in Civil Engineering']['link'] = alumniss_civil_path

    @summaries['Certificate in Plumbing'] = {}
    @summaries['Certificate in Plumbing']['total'] = Alumni.cert_in_plumbing.count
    @summaries['Certificate in Plumbing']['link'] = alumniss_cert_plumbing_path

    @summaries['Certificate in Electrical Installation'] = {}
    @summaries['Certificate in Electrical Installation']['total'] = Alumni.cert_in_electrical.count
    @summaries['Certificate in Electrical Installation']['link'] = alumniss_cert_electrical_path

    @summaries['Certificate in Building and Concrete Practice'] = {}
    @summaries['Certificate in Building and Concrete Practice']['total'] = Alumni.cert_building.count
    @summaries['Certificate in Building and Concrete Practice']['link'] = alumniss_cert_building_path

    @summaries['Certificate in Motor Vehicle Maintenance'] = {}
    @summaries['Certificate in Motor Vehicle Maintenance']['total'] = Alumni.cert_motor_vehicle.count
    @summaries['Certificate in Motor Vehicle Maintenance']['link']= alumniss_cert_motor_vehicle_path
  end

  def new
    @alumni = Alumni.new
  end

  def create
    @alumni = Alumni.create(alumni_params)
    if @alumni.save
      AlumniMailer.with(alumni: @alumni).welcome_email.deliver_now
      redirect_to @alumni
    else
      render 'new'
    end
  end

  def show
    @alumni = Alumni.find(params[:id])
  end

  def index
    @alumnis = Alumni.all
  end

  def water_students
    @water_students = Alumni.dip_in_water
  end

  def electrical_students
    @electrical_students = Alumni.dip_in_electrical
  end

  def mechanical_students
    @mechanical_students = Alumni.dip_in_mechanical
  end

  def architectural_students
    @architectural_students = Alumni.dip_in_architecture
  end

  def civil_students
    @civil_students = Alumni.dip_in_civil
  end

  def cert_plumbing
    @cert_plumbing = Alumni.cert_in_plumbing
  end

  def cert_electrical
    @cert_electrical = Alumni.cert_in_electrical
  end

  def cert_building
    @cert_building = Alumni.cert_building
  end

  def cert_motor_vehicle
    @cert_motor_vehicle = Alumni.cert_motor_vehicle
  end

  private

  def alumni_params
    params['alumni'].permit(
      :first_name,
      :last_name,
      :email,
      :course,
      :year_of_study,
      :employed,
      :employer,
      :own_company,
      :phonecontact
    )
  end
end
