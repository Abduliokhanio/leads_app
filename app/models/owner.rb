class Owner < ApplicationRecord
    has_many :leads
    has_many :notes, through: :leads
end
