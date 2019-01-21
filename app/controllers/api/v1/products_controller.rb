module Api
  module V1
    class ProductsController <ApplicationController
      def index
        products = Product.where('inventory_count != ?', 0).order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded products', data:products},status: :ok
      end

      def show
        product = Product.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded product', data:product},status: :ok
      end

      def update
        product = Product.find(params[:id])
        if product.valid?
          product.decrement(:inventory_count)
          if product.save
            render json: {status: 'SUCCESS', message:'Purchased product', data:product},status: :ok
          else
            render json: {status: 'ERROR', message:'Product not purchased', data:product.errors},status: :unprocessable_entity
          end
        else
          render json: {status: 'ERROR', message:'Product is invalid', data:product.errors},status: :unprocessable_entity
        end
      end

    end
  end
end
