class Note < ApplicationRecord
    belongs_to :lead
    belongs_to :owner
end
