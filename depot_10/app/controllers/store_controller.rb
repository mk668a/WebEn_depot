class StoreController < ApplicationController
  def index
    @airticles = Airticle.order(:title)
  end
end
