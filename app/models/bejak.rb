class Bejak < ApplicationRecord
    has_many :bejak_details
    has_many  :wastes
end
