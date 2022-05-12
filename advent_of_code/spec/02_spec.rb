# frozen_string_literal: true

require '02'

RSpec.describe 'dive' do
  let(:input) do
    <<~TXT
      forward 5
      down 5
      forward 8
      up 3
      down 8
      forward 2
    TXT
  end

  it 'calculates the horizontal position and depth following a planned course' do
    expect(calculate_position_and_depth(input)).to match('position 15 depth 10')
  end

  it 'multiplies horizontal position by depth' do
    expect(multiply_position_and_depth(input)).to eq(150)
  end
end
