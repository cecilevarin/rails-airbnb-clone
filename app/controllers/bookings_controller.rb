class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new(booking_params)
    @booking.start_date = start_date
    @booking.end_date = end_date
    @booking.user = current_user
    @booking.gear = @gear

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render 'gears/show'
    end
  end


  def index
  end

  def edit
    id = params[:id]
    @booking = Booking.find(id)
  end

  def show
    @booking = Booking.find(params[:id])
    @gear = @booking.gear
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
    params.require(:booking).permit(:status, :user_id, :gear_id, :price)
  end

  def start_date
    Date.parse(params[:booking][:start_date])
  end

   def end_date
    Date.parse(params[:booking][:end_date])
  end

end


