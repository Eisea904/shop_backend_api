class Item < ApplicationRecord
    has_many :inventories
    has_many :parties, through: :inventories 
end
