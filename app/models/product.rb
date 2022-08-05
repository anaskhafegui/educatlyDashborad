class Product < ApplicationRecord
    has_one_attached :image

    def imdb_url
        "https://www.imdb.com/title/#{imdb_id}"
    end
    
end
