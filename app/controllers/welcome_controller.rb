class WelcomeController < ApplicationController
  def index
    @demo = Demo.new
  end



end