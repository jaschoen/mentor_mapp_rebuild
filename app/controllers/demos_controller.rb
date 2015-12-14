class DemosController < ApplicationController
  def index
  end

  def new
    @demo = Demo.new
  end

  def create
    @demo = Demo.new(demo_params)
    @demo.request = request
    if @demo.deliver
      flash.now[:error] = nil
      redirect_to root_path, alert: "Demo requested, we'll get back to you soon!"
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to root_path, alert: "Please Enter All Information"
    end
  end

private
  def demo_params()
    params.require(:demo).permit(:email, :industry, :location)
  end

end