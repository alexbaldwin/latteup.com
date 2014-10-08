class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.friendly.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to '/404'
  end
end
