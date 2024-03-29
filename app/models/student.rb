class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, presence: true
    validates :email, presence: true, length: {maximum: 100}, uniqueness: {case_sensitive: false}
    validates :first_name, :last_name, length: {minimum: 2, maximum: 50}
    validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: 'only letters are allowed' }
   
    validate :validate_student_age

    def validate_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            if age < 15
                errors.add(:age, 'Sorry, you are not eligible to register, age must be greater than 15')
            end
        end
    end
    def full_name
        "#{first_name} #{last_name}"
    end

    def age
        if self.date_of_birth.present?
            Date.today.year - self.date_of_birth.year
        else
            nil
        end
    end
    def name_with_email
        "#{full_name} / #{email}"
    end
end
