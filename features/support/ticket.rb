def create_tickets
  2.times do
    ticket = FactoryBot.create(:ticket)
    FactoryBot.create(:excavator, ticket: ticket)
  end
end

def all_request_numbers
  Ticket.pluck(:request_number)
end

def ticket_details
  [
    ticket.request_number,
    ticket.sequence_number,
    ticket.request_type,
    ticket.response_due_date_time,
    ticket.primary_service_area_code,
    ticket.additional_service_area_codes
  ]
end

def excavator_details
  [
    excavator.company_name,
    excavator.street,
    excavator.city,
    excavator.state,
    excavator.zip
  ]
end

def ticket
  Ticket.first
end

def excavator
  ticket.excavator
end
