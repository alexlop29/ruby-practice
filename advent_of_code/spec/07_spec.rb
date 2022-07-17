# frozen_string_literal: true

require '07'

RSpec.describe 'the treachery of whales' do
    let(:input) do
      <<~TXT
        16,1,2,0,4,2,7,1,2,14
      TXT
    end
  
    it 'calculates the cheapest possible outcome' do
      expect(least_fuel_possible(input)).to eq(37)
    end

    it 'calculates the cheapest possible outcome with cost consumption' do
        expect(least_fuel_possible_with_cost_consumption(input)).to eq(168)
      end
end