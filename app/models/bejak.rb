class Bejak < ApplicationRecord
    has_many :bejak_details,  dependent: :destroy
    has_many  :wastes,          dependent: :destroy
end
