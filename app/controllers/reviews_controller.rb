class ReviewsController < ApplicationController
    before_action :require_login, exempt: [:destroy]
    before_action :require_ownership, only: [:new, :create]



    def new
        @product = get_product
@review = @product.reviews.build

    end

    def create
        @product = get_product
        @review = @product.reviews.build(review_params)
        @review[:user_id] = current_user[:id]
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
            flash.now[:alert] = "there was a problem with the deletion"
            redirect_to product_url(@product)
        end
    end

    private
    def get_product
        @product = Product.find(params[:product_id])
    end

    def review_params
        params.require(:review).permit(:review_text, :review_rating)
    end

    def require_login
        unless session[:user_id]
            flash.now[:alert] = "you must be logged in"
        redirect_to root_url
        end 
    end

    def require_ownership

    end
end
