class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @Booking = Booking.new(booking_params)
    @Booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end


  def index
  end

  def edit
    id = params[:id]
    @booking = Booking.find(id)
  end

  def show
  end

  def update

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

  end


  private

  def set_booking
   @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :user_id, :gear_id, :start_date, :end_date, :price)
  end
end


