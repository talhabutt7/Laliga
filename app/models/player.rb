class Player < ApplicationRecord

    has_one :address
    belongs_to :team

    validates :first_name, presence: true
    validates :last_name, presence: true, on: :create
    validates :age, presence: true, numericality: {greater_than:0, less_than_or_equal_to: 100} 

end
