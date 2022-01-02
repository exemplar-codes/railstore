class User < ApplicationRecord
    has_many :items, :purchases
end
