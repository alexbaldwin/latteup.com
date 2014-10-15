class CuratorsController < ApplicationController
  def index
    @curators = Curator.all.order(:name)
  end
end
