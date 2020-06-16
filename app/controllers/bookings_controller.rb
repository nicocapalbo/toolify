class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:booking_id])
  end

  def new

  end

  def create
  end

  private

  def book_params
    params.require().permit()
  end


end
