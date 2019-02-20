require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it { expect(Ticket.reflect_on_association(:excavator).macro).to eq(:has_one) }
end
