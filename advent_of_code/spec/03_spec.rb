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
    expect(calculate_gamma_rate(input)).to match("10110")
  end

#   it 'calculates the epsilon rate in binary' do
#     expect(calculate_epsilon_rate(input)).to eq(01001)
#   end

#   it 'converts binary to decimal' do
#     expect(convert_binary_to_decimal(01001)).to eq(9)
#     expect(convert_binary_to_decimal(10110)).to eq(22)
#   end

#   it 'calculates the power consumption in decimal' do
#     expect(calculate_power_consumption(input)).to eq(198)
#   end
end
