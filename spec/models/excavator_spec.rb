require 'rails_helper'

RSpec.describe Excavator, type: :model do
  it { expect(Excavator.reflect_on_association(:ticket).macro).to eq(:belongs_to) }
end
