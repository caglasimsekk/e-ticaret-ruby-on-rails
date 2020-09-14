class BrandsController < ApplicationController
    def index
        @brands = Brand.all
      end

    def show
        @brand = Brand.find(params[:id])
      end

    def new
        @brand = Brand.new
    end
  
    def edit
        @brand = Brand.find(params[:id])
      end

    def create
        @brand = Brand.new(params.require(:brand).permit(:title, :text))

 if @brand.save
  redirect_to @brand
else
    render 'new'
    end
end

def update #updating  brand 
    @brand = Brand.find(params[:id])
  
    if @brand.update(brand_params)
      redirect_to @brand
    else
      render 'edit'
    end
  end

  def destroy #deleting  brand 
    @brand = Brand.find(params[:id])
    @brand.destroy

    redirect_to brands_path
  end

    private
  def brand_params
    params.require(:brand).permit(:title)
  end
end
