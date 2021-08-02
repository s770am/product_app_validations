class Product < ApplicationRecord
    has_many :reviews

    validates :name, presence: true
    validates :price, numericality: {greater_than: 0}

    def sum_ratings
        if self.reviews.size == 0
            self[:rating] = nil
        else
            count = 0
        total = 0
        self.reviews.each do |review|
            count += 1
            total += review[:review_rating]
        end
        self[:rating] = total / count  
        end
      
    end

    
end
