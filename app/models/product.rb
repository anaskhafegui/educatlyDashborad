class Product < ApplicationRecord
    has_one_attached :image
    validates :name,:image,:description, :price , presence: true
    belongs_to :administrator
    validates_presence_of :administrator 
end
