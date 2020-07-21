class Alumni < ApplicationRecord
    validates :email, :first_name, :last_name, :course, :year_of_study, presence: true
    validates :email, uniqueness: true
end
