class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_items = current_order.order_items
    @order_item = current_order.order_items.new
  end
end
