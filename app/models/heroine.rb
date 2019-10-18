class Heroine < ApplicationRecord

    validates :name, :super_name, :power_id,  presence: true
    validates :name, :super_name,  uniqueness: true
    belongs_to :power
end
