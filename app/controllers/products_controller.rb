class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to products_url
        else
            render :new
        end
    end

    def show
        @product = Product.find(params[:id])
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
       if @product.update(product_params)
           redirect_to products_url
       else
           render :update
       end 
    end

    def destroy
        
    end

    private
    def product_params
params.require(:product).permit(:name, :price)        
    end
end
