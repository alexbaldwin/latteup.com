class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
  end
end
