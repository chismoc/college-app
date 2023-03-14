class Student < ApplicationRecord
validates :first_name, :last_name, :email,:date_of_birth, presence: true
end
