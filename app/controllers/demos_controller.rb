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
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private
  def demo_params()
    params.require(:demo).permit(:email, :industry, :location)
  end

end