class CuratorsController < ApplicationController
  def index
    @curators = Curator.all
  end
end
