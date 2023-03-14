class Student < ApplicationRecord
    has_many :blogs
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, presence: true
end
