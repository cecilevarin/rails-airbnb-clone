class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :create, :edit]
  def index
    @gears = Gear.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
