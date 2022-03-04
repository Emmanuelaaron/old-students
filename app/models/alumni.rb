class Alumni < ApplicationRecord
  validates :email, :first_name, :last_name, :course, :year_of_study, :phonecontact, presence: true
  validates :email, :phonecontact, uniqueness: true

  scope :dip_in_electrical, -> { where(course: 'Diploma in Electrical Engineering') }
  scope :dip_in_water, -> { where(course: 'Diploma in Water engineering') }
  scope :dip_in_mechanical, -> { where(course: 'Diploma in Mechanical Engineering') }
  scope :dip_in_architecture, -> { where(course: 'Diploma in Architecture') }
  scope :dip_in_civil, -> { where(course: 'Diploma in Civil Engineering') }
  scope :cert_in_plumbing, -> { where(course: 'Certificate in Plumbing') }
  scope :cert_in_electrical, -> { where(course: 'Certificate in Electrical Installation') }
  scope :cert_building, -> { where(course: 'Certificate in Building and Concrete Practice') }
  scope :cert_motor_vehicle, -> { where(course: 'Certificate in Motor Vehicle Maintenance') }

  # Ex:- scope :active, -> {where(:active => true)}
end
