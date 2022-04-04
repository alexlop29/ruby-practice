# frozen_string_literal: true

RSpec.describe sonar_sweep do
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

  it 'counts the number of times a depth measurement' do
    solution = sonar_sweep(input)

    expect(solution).to eq(7)
  end
end
