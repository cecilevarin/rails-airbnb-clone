class User::DashboardsController < ApplicationController
  def index
    @user_gears = current_user.gears
    @user_bookings = current_user.bookings
  end
end
