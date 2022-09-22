class Testudo < ApplicationRecord

    validates :buildingName, presence: true
    validates :testudoPresnt, presence: true
    validates :region, presence: true 
end
