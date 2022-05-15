# frozen_string_literal: true

require '03'

RSpec.describe 'binary diagnostic' do
  let(:input) do
    <<~TXT
      00100
      11110
      10110
      10111
      10101
      01111
      00111
      11100
      10000
      11001
      00010
      01010
    TXT
  end

  it 'calculates the gamma rate in binary' do
    expect(calculate_gamma_rate(input)).to match('10110')
  end

  it 'calculates the epsilon rate in binary' do
    expect(calculate_epsilon_rate(input)).to match('01001')
  end

  it 'calculates the power consumption in decimal' do
    expect(calculate_power_consumption(input)).to eq(198)
  end

  it 'calculates the oxygen generator rating' do
    expect(calculate_oxygen_generator_rating(input)).to match('10111')
  end

  it 'calculates the CO2 scrubber rating' do
    expect(calculate_co2_scrubber_rating(input)).to match('01010')
  end

  it 'calulcates the life support rating' do
    expect(calculate_life_support_rating(input)).to eq(230)
  end
end
