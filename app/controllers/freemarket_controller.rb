class FreemarketController < ApplicationController
  def index
    @freemarkets = freemarkets.all
  end

  def show
  end

  def create
  end
end
