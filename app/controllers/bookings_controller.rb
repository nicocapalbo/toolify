class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:booking_id])
  end

  def new
    @booking = Booking.new
    @tool = Tool.find(params[:tool_id])
  end

  def create
    @booking = Booking.new(booking_params)
    if (Time.new < @booking.start_date) && (@booking.start_date < @booking.finish_date)
      # maybe add user that rents, is not user who gives tool to rent
      @tool = Tool.find(params[:tool_id])
      @booking.user_id = current_user.id
      @booking.tool_id = @tool.id
      @booking.status = "pending"
      @booking.total_price = (@booking.finish_date - @booking.start_date) / 86400 * @tool.price
      @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :finish_date, :status)
  end


end
