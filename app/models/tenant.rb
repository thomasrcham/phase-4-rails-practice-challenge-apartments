class Tenant < ApplicationRecord
    has_many :leases
    has_many :apartments, through: :leases

    validates :name, presence: {message: "Name must exist"}
    validates :age, numericality: {greater_than_or_equal_to: 18, message: "Must be 18 or older"}
end
