class FreemarketController < ApplicationController
  def index
  end

  def show
  end

  def create
    @freemarket = Freemarket.New
  end
end
