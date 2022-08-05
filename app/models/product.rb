class Product < ApplicationRecord
    
    has_one_attached :image
    before_validation :set_admin
    validates :name,:image,:description, :price , presence: true
    belongs_to :administrator

    def set_admin
        self.administrator_id = 1;
    end
end
