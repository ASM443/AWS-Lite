class Testudo < ApplicationRecord

    validates :buildingName, presence: true
    validates :testudoPresnt, presence: false
    validates :region, presence: true 
end
