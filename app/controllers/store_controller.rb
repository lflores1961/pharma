class StoreController < ApplicationController
  def index
    @products = Product.order(:tittle)
  end
end
