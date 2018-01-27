class BookingsController < ApplicationController

  def show
    @bookings = Rails.cache.fetch("bookings") { Booking.where(motel_id: params[:motel_id]).collect }
    @booking = @bookings.select { |o| o.id == params[:id].to_i }.first

    @motel = Motel.find(params[:motel_id])
    respond_to do |format|
      format.js
    end
  end

  def index
    @bookings = Rails.cache.fetch("bookings") { Booking.where(motel_id: params[:motel_id]) }
    @motel = Motel.find(params[:motel_id])
  end
end
