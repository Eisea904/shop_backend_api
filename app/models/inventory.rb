class Inventory < ApplicationRecord
  belongs_to :party
  belongs_to :item
end
