class FreemarketsController < ApplicationController
  def index
    @freemarkets = Freemarket.limit(10).order('created_at ASC')
  end

  def show

  end

  def create
  end
end
