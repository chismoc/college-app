class Course < ApplicationRecord
    validates :course_code, length: {minimum:4, maximum:10}
    include Validatable
    has_and_belongs_to_many :students
end
