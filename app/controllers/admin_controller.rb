class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @user = User.find_by(:id => session[:user_id])
  end
end
