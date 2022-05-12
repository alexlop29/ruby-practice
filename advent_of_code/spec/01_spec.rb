# frozen_string_literal: true

require '01'

RSpec.describe 'sonar sweep' do
  let(:input) do
    <<~TXT
      199
      200
      208
      210
      200
      207
      240
      269
      260
      263
    TXT
  end

  it 'counts the number of times a depth measurement increases' do
    expect(depth_measurement_increase(input)).to eq(7)
  end

  it 'counts the number of times a three-measurement sliding window increases' do
    expect(sliding_window_increase(input)).to eq(5)
  end
end
