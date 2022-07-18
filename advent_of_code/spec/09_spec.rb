# frozen_string_literal: true

require '09'

RSpec.describe 'smoke basin' do
  let (:input) do
    <<~TXT
      2199943210
      3987894921
      9856789892
      8767896789
      9899965678
    TXT
  end

  it 'calculates the sum of the risk levels of all low points on a heightmap' do
    expect(sum_risk_levels_in_height_map(input)).to eq(15)
  end

end
