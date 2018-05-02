class ChargesController < ApplicationController
  def new

  end

  def create

    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Practice Stripe',
      :currency => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  def show
    @order_items = current_order.order_items
  end

end
