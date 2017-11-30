require 'spec_helper'

require 'spec_helper'

include Booking

describe('Restful-booker') do

  it('/booking should return a 200') do
    response = Booking.all_bookings

    expect(response.code).to be(200)
  end

  it('/booking/{id} should return a 200') do
    response = Booking.specific_booking(1, :json)

    expect(response.code).to be(200)
  end

  it('/booking/{id} should return a 418 when sent a bad accept header') do
    response = Booking.specific_booking(1, :text)

    expect(response.code).to be(418)
  end

end
