class ProductsController < ApplicationController
    def create  #creating new product belonging to a brand
        @brand = Brand.find(params[:brand_id])
        @product = @brand.products.create(product_params)
        redirect_to brand_path(@brand)
      end
     
      def update #updating new product belonging to a brand
        @brand = Brand.find(params[:id])
        @product = @brand.products.find(params[:id])
        if @product.update(product_params)
          redirect_to brand_path(@brand)
        else
          render 'edit'
        end
      end
    
      def destroy #deleting new product belonging to a brand
        @brand = Brand.find(params[:brand_id])
        @product = @brand.products.find(params[:id])
        @product.destroy
        redirect_to brand_path(@brand)
      end


      private
        def product_params
          params.require(:product).permit(:productModel, :body)
        end
end
