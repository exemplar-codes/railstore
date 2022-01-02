class Purchase < ApplicationRecord
    has_one :item
    belongs_to :user
end
