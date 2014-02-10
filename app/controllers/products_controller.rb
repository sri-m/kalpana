class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new #new form
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render "new"
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		end
	end

	def destroy
		@product = Product.find(params[:id])
		if @product.destroy
			redirect_to @product
		end
	end

	def product_params
		 params.require(:product).permit(:name, :email)
	end
	
end
