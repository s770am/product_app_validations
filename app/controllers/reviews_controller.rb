class ReviewsController < ApplicationController
    
    def new
        @product = get_product
@review = @product.reviews.build

    end

    def create
        @product = get_product
        @review = @product.reviews.build(review_params)
        @product.sum_ratings
        if @review.save
            @product.save
            redirect_to product_url(@product)
        else
            render :new
        end
    end

    def destroy
        @product = get_product
        @review = Review.find(params[:id])

        if @review.delete
            @product.sum_ratings
            @product.save
            redirect_to product_url(@product)
        else
            flash.now[:alert] = "there was a problem"
            redirect_to product_url(@product)
        end
    end

    private
    def get_product
        @product = Product.find(params[:product_id])
    end

    def review_params
        params.require(:review).permit(:user, :review_text, :review_rating)
    end
end
