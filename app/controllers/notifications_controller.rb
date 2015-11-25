class ContactsController < ApplicationController
  def index
  end

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(contact_params)
    @notification.request = request
    if @notification.deliver
      flash.now[:error] = nil
      byebug
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private
  def notification_params()
    params.require(:notification).permit(:first_name, :last_name, :email, :message, :nickname)
  end

end