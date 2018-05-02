class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save

    # if @order.save
    #   respond_to do |format|
    #     format.html { redirect_to products_path }
    #     format.js
    #   end
    # end

    session[:order_id] = @order.id
    redirect_to root_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to products_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end