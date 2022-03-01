class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :create, :edit, :destroy]

  def index
    @flats = Flat.all
    @flat = Flat.new
  end

  def new
    @flat = Flat.new

  end

  def show

  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
