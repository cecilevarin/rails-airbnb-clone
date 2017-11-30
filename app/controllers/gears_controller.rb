class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @gears = Gear.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @gear = Gear.new
    @errors = nil;
  end

  def create
    @gear = Gear.new(gear_params)
    if @gear.save
      redirect_to gear_path(@gear)
    else
      @errors =@gear.errors.messages
      render :new
    end
  end

  def edit; end

  def update
    if @gear.update(gear_params)
    redirect_to gears_path
    else
      render :edit
    end
  end

  def destroy
    @gear.destroy
    redirect_to gears_path
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(
      :gear_type, :year, :brand, :model, :size, :daily_price, :user_id,
      :description, :start_date, :end_date, photos: []
    )
  end
end
