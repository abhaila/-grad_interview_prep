class OrdersController < ApplicationController

  def create
  course = Course.find(params[:course_id])
  order  = Order.create!(course: course, amount: course.price, state: 'pending', user: current_user)
  authorize order
  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: course.name,
      images: [course.photo],
      amount: course.price_cents,
      currency: 'gbp',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )
  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end
end
