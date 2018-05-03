class OrderItemsController < ApplicationController

  def create
    # @order = current_order
    # @item = @order.order_items.new(item_params)
    # @order.save

    # if @order.save
    #   respond_to do |format|
    #     format.html { redirect_to products_path }
    #     format.js
    #   end
    # end
    #
    @order = current_order
      @item = @order.order_items.new(item_params)
      # @order.account_id = Account.find_by(user_id: current_user.id).id
      @order.save
      session[:order_id] = @order.id

      respond_to do |format|
        format.html { redirect_to products_path }
        format.js { render :file => "layouts/create.js.erb" }
      end

  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to root_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

end
