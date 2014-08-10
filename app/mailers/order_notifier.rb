class OrderNotifier < ActionMailer::Base
  default from: "whatsup@vivval.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
    @greeting = "Hi"

    mail to: "designgumption@gmail.com", subject: 'Pragmatic Order Confirmed'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    @order = order

    mail to: "designgumption@gmail.com", subject: 'Pragmatic Order Shipped'
  end
end
