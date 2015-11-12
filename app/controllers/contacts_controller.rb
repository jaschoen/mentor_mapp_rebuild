class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private
  def contact_params()
    params.require(:contact).permit(:first_name, :last_name, :email, :message, :nickname)
  end

end