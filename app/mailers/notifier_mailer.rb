
class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.order_received.subject
  #


  default :from => "BookStore <huaduc0602@gmail.com>"
 
  def order_received(order)    
      @order = order

      mail :to => @order.email, :subject => "We've received your order"
  end


  # def order_received order

  #   @greeting = "Hi"
  #   @order = order
  #   mail :to => @order.email
  # end
end
