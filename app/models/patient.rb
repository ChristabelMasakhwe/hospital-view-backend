class Patient < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true
    validates :password_digest, length: {minimum: 8}

    has_many :admissions
    has_many :hospitals, through: :admissions
end
