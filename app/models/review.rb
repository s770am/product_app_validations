class Review < ApplicationRecord
    belongs_to :product

    validates :review_rating, numericality: {less_than: 10, greater_than: 0}
    validates :review_text, :user, presence: true

end
