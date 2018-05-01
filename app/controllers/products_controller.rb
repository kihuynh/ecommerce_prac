class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new

    walmart_item = Walmart.new("poptart")
    @salePrice = walmart_item.get_item_price()
  end
end
