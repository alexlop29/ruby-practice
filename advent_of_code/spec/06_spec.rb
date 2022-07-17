# frozen_string_literal: true

require '06'

RSpec.describe 'lanternfish' do
  let(:input) do
    <<~TXT
      3,4,3,1,2
    TXT
  end

  it 'finds the number of laternfish after 18 days' do
    expect(calculate_exponential_increase(input,18)).to eq(26)
  end

  it 'finds the number of laternfish after 80 days' do
    expect(calculate_exponential_increase(input,80)).to eq(5934)
  end

  it 'finds the number of laternfish after 80 days' do
    expect(calculate_exponential_increase(input,256)).to eq(26984457539)
  end
end