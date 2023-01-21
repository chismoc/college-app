class Student < ApplicationRecord
validates :first_name, :last_name, :email, :address, :dob, presence: true
end
