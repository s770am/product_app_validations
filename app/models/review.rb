class Review < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :review_rating, numericality: {less_than: 10, greater_than: 0}
    validates :review_text, presence: true

end
