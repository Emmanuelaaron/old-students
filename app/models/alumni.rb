class Alumni < ApplicationRecord
  validates :email, :first_name, :last_name, :course, :year_of_study, :phonecontact, presence: true
  validates :email, :phonecontact, uniqueness: true
end
