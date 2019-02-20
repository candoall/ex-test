class Ticket < ApplicationRecord
  has_one :excavator

  delegate :company_name, :street, :city, :state, :zip, to: :excavator, allow_nil: :true

  def coordinates
    digsite_info.tr('POLYGON((', '').tr('))', '').split(',').map(&:split).map do |cordinate|
      { lat: cordinate[0].to_f, lng: cordinate[1].to_f }
    end
  end
end
